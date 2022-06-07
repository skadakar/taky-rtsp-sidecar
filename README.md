### taky-rtsp-sidecar

WORK IN PROGRESS!

Self contained RTSP missing link for taky, forcing 8554 port usage and RTSP.


Keys must be provided in pem/crt/key

They must be attached to the container like so: 
```
      - /whatever/ca.pem:/data/certs/ca.pem
      - /whatever/server.pem:/data/certs/server.pem
      - /whatever/server.key:/data/certs/server.key
```
