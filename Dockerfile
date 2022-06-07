FROM nodered/node-red

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY settings.js /data/settings.js
#COPY flows_cred.json /data/flows_cred.json
#COPY flows.json /data/flows.json
