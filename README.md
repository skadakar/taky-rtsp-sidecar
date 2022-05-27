### taky-rtsp-sidecar

Node-Red flow to fetch live streams and send them to your TAK server of choice over SSL.
It does not know where the stream is from, but if stream name matches a known callsign it will attach it to that location.

It's assumed you use rtsp on port 8554.
You must enable API

This is not productified, you must add PEM files and might have to add IPs.

No planned maintenance for this.
