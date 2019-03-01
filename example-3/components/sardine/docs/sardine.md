{% set i = inventory.parameters %}

# Welcome to the README!

Target *{{ i.target }}* is running:

* {{ i.sardine.replicas }} replicas of *sardine* running image {{ i.sardine.image }} 
* on cluster {{ i.cluster.cluster }}
