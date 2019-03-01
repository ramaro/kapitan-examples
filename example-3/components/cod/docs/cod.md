{% set i = inventory.parameters %}

# Welcome to the README!

Target *{{ i.target }}* is running:

* {{ i.cod.replicas }} replicas of *cod* running image {{ i.cod.image }} 
* on cluster {{ i.cluster.cluster }}
