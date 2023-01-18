Welcome to the spacex-app!  This is an application which hosts an API to pull lists of Tor Exit Nodes from https://www.dan.me.uk/torlist/ and https://udger.com/resources/ip-list/tor_exit_node, add exclusions to trust and not include as an Exit Node, and facilitates full manipulation of the data via RESTful API

This uses docker.  Flask is used for the webserver.  Sqlite is used for the database

# Requirements
[docker](https://www.docker.com/get-docker)

# Usage
Run docker-compose
```
docker-compose up --build
```

Test localhost api in your browser by navigating to
```
http://localhost:5000/
```


Other API calls:
```
 -URL: http://localhost:5000/getIPs
   -METHOD: GET
   -USAGE: curl -i -s -k -X $'GET' -H $'Host: localhost' $'http://localhost:5000/getIPs'
 -URL: http://localhost:5000/getExclusions
   -METHOD: GET
   -USAGE: curl -i -s -k -X $'GET' -H $'Host: localhost' $'http://localhost:5000/getExclusions'
 -URL: http://localhost:5000/addExclusion
   -METHOD: POST
   -USAGE: curl -i -s -k -X $'POST' -H $'Host: localhost' -H $'Content-Type: application/json' --data '{"ip": "192.168.1.1"}' $'http://localhost:5000/addExclusion'
 -URL: http://localhost:5000/removeExclusion 
   -METHOD: POST
   -USAGE: curl -i -s -k -X $'POST' -H $'Host: localhost' -H $'Content-Type: application/json' --data '{"ip": "192.168.1.1"}' $'http://localhost:5000/removeExclusion'
```

