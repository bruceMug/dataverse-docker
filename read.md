# Enter the dataverse container
docker exec -it dataverse bash

# Test if Dataverse is responding internally
curl -I http://localhost:8080

# Or test the health endpoint
curl http://localhost:8080/api/info/version

# Check if the Java application is running
ps aux | grep java

# Check what ports are listening
netstat -tuln | grep 8080




<!-- this did magic -->
https://chatgpt.com/share/686c2a6e-a50c-800d-a3f2-9154bf74399b