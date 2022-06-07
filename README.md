### taky-rtsp-sidecar

WORK IN PROGRESS!

Self contained RTSP missing link for taky, forcing 8554 port usage and RTSP.


To get your tak server keys

```
openssl pkcs12 -in user.p12 -out crtfile.crt -nokeys -clcerts
openssl pkcs12 -in server.p12 -out ca.crt -cacerts -nokeys
openssl pkcs12 -in user.p12 -nokeys -out publiccert.pem
```
