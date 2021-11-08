FROM node:12-slim

WORKDIR /usr/src/app
COPY gen/srv .
RUN npm install

# Copy mockup data
COPY db/data db/data/

# Add Fiori UI
COPY app app/
RUN find app -name '*.cds' | xargs rm -f

EXPOSE 4004
USER node
CMD [ "npm", "start" ]