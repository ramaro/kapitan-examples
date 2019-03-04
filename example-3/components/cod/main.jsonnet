local kap = import "lib/kapitan.libjsonnet";
local deployment = import "./deployment.jsonnet";
local configmap = import "./configmap.jsonnet";
local inv = kap.inventory();


{
    "cod-deployment": deployment,
    "cod-configmap": configmap,
}
