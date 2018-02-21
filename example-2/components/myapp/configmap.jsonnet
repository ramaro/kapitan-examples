local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

{
    apiVersion: "v1",
    kind: "ConfigMap",
    data: {
        "index.html": kap.jinja2_template("components/myapp/tmpl/index.html.j2", inv),
    },
    metadata: {
        name: "webroot",
        namespace: inv.parameters.namespace,
    },
}
