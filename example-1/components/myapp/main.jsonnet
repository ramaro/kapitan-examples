local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

local myContainers = [
    {
        name: "nginx",
        image: inv.parameters.nginx.image,
        ports: [{ containerPort: 80 }],
    },
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

local svc = {
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
};


{
    "app-deployment": myDeployment,
    "app-service": svc,
}
