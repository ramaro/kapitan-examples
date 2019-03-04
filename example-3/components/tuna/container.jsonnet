local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

{
    name: "tuna",
    image: inv.parameters.tuna.image,
    args: inv.parameters.tuna.args,
    volumeMounts: [
        {
            mountPath: "/tmp",
            name: "data",
            readOnly: true,
        },
    ],
}
