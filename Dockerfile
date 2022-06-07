FROM nodered/node-red

RUN npm install --unsafe-perm --no-update-notifier --no-fund 
RUN npm install npm install node-red-contrib-ip node-red-contrib-moment node-red-contrib-tcp-tls node-red-node-sqlite
        
COPY settings.js /data/settings.js
COPY flows.json /data/flows.json

EXPOSE 1880

ENTRYPOINT ["npm", "start", "--cache", "/data/.npm", "--", "--userDir", "/data"]
