local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

local container = import "./container.jsonnet";
local myVolumes = [
    {
        name: "data",
        configMap: { name: "webroot" },
    },
];


{
    apiVersion: "apps/v1beta1",
    kind: "Deployment",
    metadata: {
        name: "my-app",
        namespace: inv.parameters.namespace,
    },
    spec: {
        replicas: inv.parameters.myapp.replicas,
        template: {
            metadata: {
                labels: { app: "my-app" },
            },
            spec: {
                containers: [container],
                volumes: myVolumes,
            },
        },
    },
}
