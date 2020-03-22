
{} (:host |cumulo.org)
  :uploads $ []
    {} (:from |dist/*) (:to |/web-assets/cdn/woodenlist/)
    {} (:from |dist/{index.html,manifest.json}) (:to |/web-assets/repo/TopixIM/woodenlist/)
    {} (:from |dist/{server.js,package.json}) (:to |/servers/woodenlist/)
