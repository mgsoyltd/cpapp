# This app is an SAP Fiori Elements Tutorial

## Build an Application End-to-End Using CAP, Node.js and VS Code

See the whole tutorial at: https://developers.sap.com/mission.btp-application-cap-e2e.html

It contains these folders and files, following our recommended project layout:

| File or Folder | Purpose                              |
| -------------- | ------------------------------------ |
| `app/`         | content for UI frontends goes here   |
| `db/`          | your domain models and data go here  |
| `srv/`         | your service models and code go here |
| `package.json` | project metadata and configuration   |
| `readme.md`    | this getting started guide           |

## Install the dependecies

```
npm install
```

## Run the app

```
cds watch
```

And then go to: http://localhost:4004/risks/webapp/

## Docker and Kyma

See: https://sap-samples.github.io/cloud-cap-risk-management/Kyma/

### Build Docker

```
cds build
docker build -t cpapp .
```

### Run bash in a temp container

```
docker run --rm -i -t cpapp /bin/bash
```

### Run the cpapp in a temp container

```
docker run --rm -t -p 4004:4004 cpapp
```
