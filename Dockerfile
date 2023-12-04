FROM        node
RUN         mkdir /app
WORKDIR     /app
ADD         node_modules/ /app/node_modules/
ADD         server.js package.json /app/
ADD         run.sh /run.sh
ENTRYPOINT  ["bash", "/run.sh"]
