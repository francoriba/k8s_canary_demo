 #!/bin/bash

 docker build -t francoriba/stable-app:latest ./app
 docker build -t francoriba/canary-app:latest ./canary

 docker push francoriba/stable-app:latest
 docker push francoriba/canary-app:latest

 kubectl apply -f deployment/k8s/
