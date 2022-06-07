### TAKY RTSP Server sidecar

Self contained RTSP missing link for taky, forcing 8554 port usage and RTSP.

It will also keep track of peoples last locations and attempt to match locations of videofeeds to users with the same name.

Bob1 will be given the same location as rtsp://example.com/Bob1

This implimentation should be server agnostic, but only tested on taky.


Keys must be provided in pem/crt/key

They must be attached to the container like so: 
```
      - /whatever/ca.pem:/data/certs/ca.pem
      - /whatever/server.pem:/data/certs/server.pem
      - /whatever/server.key:/data/certs/server.key
```

### Bonus feature!

Add `del`as a remark to any COT you want gone. For a better version of this check forcedelete from Hayt here:

https://drive.google.com/drive/folders/1o8tsalgxUGxdg2HiDw5xVu_-bnr63F3d?usp=sharing

