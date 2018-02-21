local kap = import "lib/kapitan.libjsonnet";
local deployment = import "./deployment.jsonnet";
local service = import "./service.jsonnet";
local configmap = import "./configmap.jsonnet";
local inv = kap.inventory();


{
    "app-deployment": deployment,
    "app-service": service,
    "app-configmap": configmap,
}
