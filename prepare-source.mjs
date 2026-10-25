import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const p=JSON.parse(readFileSync('reviewed-source.json'));
assert.equal(p.base,'d7f215dd1a1e905e89e694316a167c96bc7e0094');
const run=(name,args)=>execFileSync(name,args,{encoding:'utf8',maxBuffer:64e6,stdio:['pipe','pipe','pipe']});
assert.equal(run('calcit',['-v']).trim(),'0.30.1');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const query=(...args)=>{const r=JSON.parse(run('calcit',['calcit.cirru','query',...args,'--format','json']));assert.ok(!r.diagnostics?.some(d=>d.severity==='error'));return norm(r.data);};
function views(){
 const namespaces=[],defs=[];
 for(const n of query('ns').namespaces){
  const info=query('ns',n);namespaces.push(info);
  const names=run('calcit',['calcit.cirru','query','defs',n]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);
  for(const d of names)defs.push(query('def',n+'/'+d));
 }
 return {config:query('config'),namespaces,defs};
}
const after=structuredClone(norm(p.before)),sites=[];
function migrate(node,path,id){
 if(!Array.isArray(node)||['quote','quasiquote',';','comment'].includes(node[0]))return;
 if(node[0]==='option:unwrap-or'){
  assert.equal(node.length,3);sites.push({id,path,kind:'option'});node[0]='.unwrap-or';
 }else if(node[0]==='case-default'){
  assert.ok(node.length>=4);const [head,value,fallback,...branches]=node;
  assert.ok(branches.every(b=>Array.isArray(b)&&b.length===2&&typeof b[0]==='string'&&/^:[\w/-]+$/.test(b[0])));
  assert.equal(new Set(branches.map(b=>b[0])).size,branches.length);
  node.splice(0,node.length,'match',value,...branches,['_',fallback]);sites.push({id,path,kind:'literal-match'});
 }
 node.forEach((x,i)=>{assert.notEqual(x,'option:unwrap-or','unexpected reference/binding requires separate review');assert.notEqual(x,'case-default','unexpected reference/binding requires separate review');migrate(x,[...path,i],id);});
}
for(const d of after.defs){assert.notEqual(d.code[0],'defmacro');migrate(d.code,[],d.id);}
assert.equal(sites.filter(s=>s.kind==='option').length,4);assert.equal(sites.filter(s=>s.kind==='literal-match').length,4);
const blob=()=>run('git',['hash-object','calcit.cirru']).trim();mkdirSync('acceptance',{recursive:true});
if(process.argv[2]==='apply'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));
 const ops=sites.map(s=>['tree','replace',s.id,'--path','@'+s.path.join('.'),'--input-format','json-ast','--code',JSON.stringify(s.path.reduce((x,i)=>x[i],after.defs.find(d=>d.id===s.id).code))]);
 assert.equal(ops.length,8);
 writeFileSync('acceptance/expected-source.json',JSON.stringify(after));writeFileSync('acceptance/operations.json',JSON.stringify(ops));
 const args=['calcit.cirru','edit','transaction','--file','acceptance/operations.json','--format','json'];
 const preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);
 writeFileSync('acceptance/preview.json',JSON.stringify(preview));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));
 writeFileSync('acceptance/modified-blob.txt',blob());
}else assert.equal(process.argv[2],'verify');
assert.deepEqual(views(),after);assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));
const modules=[['Cumulo/cumulo-reel.calcit','0.0.57','0.0.61'],['Cumulo/cumulo-util.calcit','0.0.29','0.0.31'],['Respo/alerts.calcit','0.10.56','0.10.57'],['Respo/respo-feather.calcit','0.4.29','0.4.30'],['Respo/respo-markdown.calcit','0.4.56','0.4.59'],['Respo/respo-message.calcit','0.0.37','0.0.38'],['Respo/respo-ui.calcit','0.7.41','0.8.0'],['Respo/respo.calcit','0.16.122','0.16.124'],['calcit-lang/js-ffi','0.2.3','0.2.5'],['calcit-lang/memof','0.0.39','0.0.40'],['calcit-lang/recollect','0.0.62','0.0.67'],['mvc-works/ws-edn.calcit','0.0.42','0.0.47']];
let deps=p.manifests['deps.cirru'].replace(':calcit-version |0.30.1-alpha.5',':calcit-version |0.30.1');
for(const[id,old,next]of modules){const from='|'+id+' |'+old;assert.equal(deps.split(from).length,2);deps=deps.replace(from,'|'+id+' |'+next);}
assert.equal(readFileSync('deps.cirru','utf8'),deps);
const pkg=JSON.parse(p.manifests['package.json']);pkg.dependencies['@calcit/procs']='0.30.1';assert.deepEqual(JSON.parse(readFileSync('package.json')),pkg);
assert.equal(p.manifests['.yarnrc.yml'],'nodeLinker: node-modules\n\nnpmPreapprovedPackages:\n  - "@calcit/procs@0.27.0"\n');assert.equal(readFileSync('.yarnrc.yml','utf8'),'nodeLinker: node-modules\n');
const lock=s=>s.split('\n\n').map(b=>b.startsWith('"@calcit/procs@npm:')?b.replace(/^  checksum:.*$/m,'  checksum: runtime-checksum'):b).join('\n\n');
assert.equal(lock(readFileSync('yarn.lock','utf8').replaceAll('0.30.1','0.30.1-alpha.5')),lock(p.manifests['yarn.lock']));
writeFileSync('acceptance/source-evidence.json',JSON.stringify({beforeBlob:p.blob,afterBlob:blob(),sites,fullSourceViewsMatch:true,definitions:after.defs.length,attachedTests:after.defs.reduce((n,d)=>n+d.tests.length,0),moduleChanges:modules.length,protocolChanges:0,baselineChanged:false}));
