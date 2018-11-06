local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

{
    apiVersion: "v1",
    kind: "ConfigMap",
    data: {
        "README": kap.jinja2_template("components/cod/tmpl/readme.j2", inv),
    },
    metadata: {
        name: "readme",
        namespace: inv.parameters.namespace,
    },
}
