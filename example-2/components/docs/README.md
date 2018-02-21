{% set i = inventory.parameters %}

# Welcome to the README!

Target *{{ i.target }}* is running:

* {{ i.myapp.replicas }} replicas of *myapp* running nginx image {{ i.nginx.image }} 
* on cluster {{ i.cluster.cluster }}
