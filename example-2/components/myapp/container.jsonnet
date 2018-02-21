local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

{
    name: "nginx",
    image: inv.parameters.nginx.image,
    ports: [{ containerPort: 80 }],
    volumeMounts: [
        {
            mountPath: "/usr/share/nginx/html/",
            name: "data",
            readOnly: true,
        },
    ],
}
