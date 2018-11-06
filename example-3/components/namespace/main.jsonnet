local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

local n = {
    apiVersion: "v1",
    kind: "Namespace",
    metadata: {
        labels: {
            name: inv.parameters.namespace,
        },
        name: inv.parameters.namespace,
        namespace: inv.parameters.namespace,
    },
};

{
    namespace: n,
}
