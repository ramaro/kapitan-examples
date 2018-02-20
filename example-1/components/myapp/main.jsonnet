local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

local myContainers = [
    { name: "nginx", image: inv.parameters.nginx.image },
];

local myDeployment = {
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
                containers: myContainers,
            },
        },
    },
};

{
    "app-deployment": myDeployment,
}
