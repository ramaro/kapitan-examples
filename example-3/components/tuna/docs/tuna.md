{% set i = inventory.parameters %}

# Welcome to the README!

Target *{{ i.target }}* is running:

* {{ i.tuna.replicas }} replicas of *tuna* running image {{ i.tuna.image }} 
* on cluster {{ i.cluster.cluster }}
