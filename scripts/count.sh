main_count=0
canary_count=0

for i in $(seq 1 100); do
  response=$(curl -s --resolve minikube.local:80:$(minikube ip) http://minikube.local | grep "Application")
  if [ "$(echo $response | grep 'Main Application')" ]; then
    main_count=$((main_count+1))
  elif [ "$(echo $response | grep 'Canary Application')" ]; then
    canary_count=$((canary_count+1))
  fi
done

echo "Main Application responses: $main_count"
echo "Canary Application responses: $canary_count"
