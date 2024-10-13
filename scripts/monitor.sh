 #!/bin/bash

 kubectl logs -l app=stable-app
 kubectl logs -l app=canary-app
 kubectl get deployments
