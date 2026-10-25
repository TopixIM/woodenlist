import assert from 'node:assert/strict';
import dayjs from 'dayjs';
import {first_match,make_regexp,url_pattern} from './js-out/app.comp.home.mjs';
import {format_day} from './js-out/app.comp.done-tasks.mjs';
const phase=process.argv[2];assert.ok(['before','after'].includes(phase));
const pattern='https?://\\S+';
const regex=make_regexp(pattern);assert.ok(regex instanceof RegExp);assert.equal(regex.flags,'');assert.equal(regex.source,url_pattern.source);
const examples=['','plain text','https://example.test/a','猫 https://例子.test/路径 😺','https://first.test/a https://second.test/b','line\nhttps://first.test/a\nnext'];
for(const text of examples){const actual=first_match(text,url_pattern),expected=text.match(new RegExp(pattern))?.[0]??'';assert.equal(actual,expected);}
assert.throws(()=>make_regexp('['),SyntaxError);
for(const time of [-1,0,86400000,Date.now()])assert.equal(format_day(time),dayjs(time).format('DD'));
const originalTest=RegExp.prototype.test;
try{RegExp.prototype.test=undefined;if(phase==='before')assert.doesNotThrow(()=>make_regexp('x'));else assert.throws(()=>make_regexp('x'),TypeError);}finally{RegExp.prototype.test=originalTest;}
const originalFormat=dayjs.prototype.format;
try{dayjs.prototype.format=undefined;assert.throws(()=>format_day(0),error=>error instanceof TypeError&&(phase==='before'||error.message.includes('DayjsHost')));}finally{dayjs.prototype.format=originalFormat;}
console.log('Controlled missing-method host negatives passed for phase '+phase+'; RegExp/Dayjs prototypes restored in finally. Checked shapes do not prove method return values.');
console.log('Actual generated String.match/RegExp first-match and rejection cases passed (6 inputs); local Dayjs DD parity passed (4 timestamps). No service, DOM, storage or account action.');
