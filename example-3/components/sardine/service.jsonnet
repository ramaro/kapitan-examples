local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

{
    apiVersion: "v1",
    kind: "Service",
    spec: {
        ports: [
            { name: "http", port: 80, targetPort: 80 },
        ],
        selector: { app: "my-app" },
        type: "NodePort",
    },

    metadata: {
        name: "my-app",
        namespace: inv.parameters.namespace,
        labels: { name: "my-app" },
    },
}
