local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

{
    name: "sardine",
    image: inv.parameters.sardine.image,
    args: inv.parameters.sardine.args,
    volumeMounts: [
        {
            mountPath: "/tmp",
            name: "data",
            readOnly: true,
        },
    ],
}
