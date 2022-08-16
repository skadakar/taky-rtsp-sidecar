### TAKY RTSP Server sidecar

https://github.com/skadakar/taky-rtsp-sidecar

https://hub.docker.com/r/skadakar/taky-rtsp-sidecar



Self contained RTSP missing link for taky, forcing 8554 port usage and RTSP.

It will also keep track of peoples last locations and attempt to match locations of videofeeds to users with the same name.

Bob1 will be given the same location as rtsp://example.com/Bob1

This implimentation should be server agnostic, but only tested on taky.
#### The RTSP Sidecar MUST be located on the same host as the RTSP server!

Overwrite settings by attaching config files to the /data/ folder, as with normal node-red docker.

Supported env variables:
```
    environment:
      - COT_IP=127.0.0.1
      - COT_PORT=8089
```

Keys must be provided in pem/crt/key

They must be attached to the container like so: 
```
      - /whatever/ca.pem:/data/certs/ca.pem
      - /whatever/server.pem:/data/certs/server.pem
      - /whatever/server.key:/data/certs/server.key
```
Using the atak client package the commands look something like this
```
openssl pkcs12 -in atak-920a214a-733b-4780-bd2e-34f21b8a49ae.p12 -out client.pem -clcerts -nokeys
openssl pkcs12 -in atak-920a214a-733b-4780-bd2e-34f21b8a49ae.p12 -nocerts -out server.key -nodes
openssl pkcs12 -in server-d166795f-f546-4ab9-aa15-25954424987a.p12 -out server.pem -nodes
```

### Bonus feature!

Add `del`as a remark to any marker you want gone. For a better version of this check forcedelete from Hayt here:

https://drive.google.com/drive/folders/1o8tsalgxUGxdg2HiDw5xVu_-bnr63F3d?usp=sharing

