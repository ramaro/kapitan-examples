local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

local container = import "./container.jsonnet";
local myVolumes = [
    {
        name: "data",
        configMap: { name: "readme" },
    },
];


{
    apiVersion: "apps/v1beta1",
    kind: "Deployment",
    metadata: {
        name: "sardine",
        namespace: inv.parameters.namespace,
    },
    spec: {
        replicas: inv.parameters.sardine.replicas,
        template: {
            metadata: {
                labels: { app: "sardine" },
            },
            spec: {
                containers: [container],
                volumes: myVolumes,
            },
        },
    },
}
