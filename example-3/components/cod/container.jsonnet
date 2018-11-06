local kap = import "lib/kapitan.libjsonnet";
local inv = kap.inventory();

{
    name: "cod",
    image: inv.parameters.cod.image,
    args: inv.parameters.cod.args,
    volumeMounts: [
        {
            mountPath: "/tmp",
            name: "data",
            readOnly: true,
        },
    ],
}
