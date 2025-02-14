# Hosting a Full-Stack Application Project

## Main function 
I'm starting this project by helping from my session leads , class rooms and slack community to get the project final result.
the project main functionality is to try to deploy a full-stack project to AWS

## Required Technologies
Your application must make use of the following:
### Dependencies back-end:
  - "@types/bcryptjs": "2.4.2",
  - "@types/jsonwebtoken": "^8.3.2",
  - "aws-sdk": "^2.429.0",
  - "bcryptjs": "2.4.3",
  - "body-parser": "^1.18.3",
  - "cors": "^2.8.5",
  - "dotenv": "^8.2.0",
  - "email-validator": "^2.0.4",
  - "express": "^4.16.4",
  - "jsonwebtoken": "^8.5.1",
  - "pg": "^8.7.1",
  - "reflect-metadata": "^0.1.13",
  - "sequelize": "^5.21.4",
  - "sequelize-typescript": "^0.6.9",
  - "bestzip": "^2.2.1"1
### DEV Dependencies back-end:
  - "@types/bluebird": "^3.5.26",
  - "@types/cors": "^2.8.6",
  - "@types/express": "^4.16.1",
  - "@types/node": "^11.11.6",
  - "@types/sequelize": "^4.27.44",
  - "@types/validator": "^10.9.0",
  - "@typescript-eslint/eslint-plugin": "^2.19.2",
  - "@typescript-eslint/parser": "^2.19.2",
  - "chai": "^4.2.0",
  - "chai-http": "^4.2.1",
  - "eslint": "^6.8.0",
  - "eslint-config-google": "^0.14.0",
  - "mocha": "^6.1.4",
  - "ts-node-dev": "^1.0.0-pre.32",
  - "typescript": "^3.9.10"

### Dependencies front-end:
  - "@angular/common": "^8.2.14",
  - "@angular/core": "^8.2.14",
  - "@angular/forms": "^8.2.14",
  - "@angular/http": "^7.2.16",
  - "@angular/platform-browser": "^8.2.14",
  - "@angular/platform-browser-dynamic": "^8.2.14",
  - "@angular/router": "^8.2.14",
  - "@ionic-native/core": "^5.0.0",
  - "@ionic-native/splash-screen": "^5.0.0",
  - "@ionic-native/status-bar": "^5.0.0",
  - "@ionic/angular": "^4.1.0",
  - "core-js": "^2.5.4",
  - "rxjs": "~6.5.4",
  - "zone.js": "~0.9.1"
### DEV Dependencies front-end:
  - "@angular-devkit/architect": "~0.12.3",
  - "@angular-devkit/build-angular": "^0.803.24",
  - "@angular-devkit/core": "~7.2.3",
  - "@angular-devkit/schematics": "~7.2.3",
  - "@angular/cli": "~8.3.25",
  - "@angular/compiler": "~8.2.14",
  - "@angular/compiler-cli": "~8.2.14",
  - "@angular/language-service": "~8.2.14",
  - "@ionic/angular-toolkit": "~1.4.0",
  - "@types/jasmine": "~2.8.8",
  - "@types/jasminewd2": "~2.0.3",
  - "@types/node": "~10.12.0",
  - "@typescript-eslint/eslint-plugin": "^2.20.0",
  - "@typescript-eslint/parser": "^2.20.0",
  - "codelyzer": "~4.5.0",
  - "jasmine-core": "~2.99.1",
  - "jasmine-spec-reporter": "~4.2.1",
  - "karma": "~3.1.4",
  - "karma-chrome-launcher": "~2.2.0",
  - "karma-coverage-istanbul-reporter": "~2.0.1",
  - "karma-jasmine": "~1.1.2",
  - "karma-jasmine-html-reporter": "^0.2.2",
  - "protractor": "~5.4.0",
  - "ts-node": "~8.0.0",
  - "tslint": "~5.12.0",
  - "typescript": "^3.5.3"
### Scripts:
  - "frontend:install": "cd udagram/udagram-frontend && npm install"
  - "frontend:start": "cd udagram/udagram-frontend && npm run start"
  - "frontend:build": "cd udagram/udagram-frontend && npm run build"
  - "frontend:test": "cd udagram/udagram-frontend && npm run test"
  - "frontend:e2e": "cd udagram/udagram-frontend && npm run e2e"
  - "frontend:deploy": "cd udagram/udagram-frontend && npm run deploy"
  - "api:install": "cd udagram/udagram-api && npm install"
  - "api:build": "cd udagram/udagram-api && npm run build"
  - "api:start": "cd udagram/udagram-api && npm run dev"
  - "api:deploy": "cd udagram/udagram-api && npm run deploy"
  - "deploy": "npm run api:deploy && npm run frontend:deploy"

## updates:
I have made some updates and app in some files
### udagram>udagram-api>bin>deploy.sh:
    cd www
    printenv > .env
    eb init $EB_APP --region $AWS_REGION
    eb deploy $EB_ENV
### udagram>udagram-api>sequelize.ts
### udagram>udagram-api>config>config.ts
### udagram>udagram-frontend>bin>deploy.sh:
    aws s3 cp --recursive --acl public-read ./www s3://$AWS_BUCKET/
    aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://$AWS_BUCKET/
### udagram>udagram-frontend>src>envrionments>environment.prod.ts
### udagram>udagram-frontend>src>envrionments>environment.ts
**Note** add documentation folder with all screennshots and diagrams

## links :
### RDS:**Endpoint & port**
   - Endpoint:[udagram.ccetnq1xvv0w.us-east-1.rds.amazonaws.com].
   - Port:[5432].
### EBS:**Elastic Beanstalk**
   - Host:[Udagramproject-env.eba-jh6hgzru.us-east-1.elasticbeanstalk.com].
   - Application name:[udagramProject].
### S3:**Bucket**
  - AWS Region: [US East (N. Virginia) us-east-1].
  - Amazon Resource Name (ARN): [arn:aws:s3:::elasticbeanstalk-us-east-1-893271596042].
  - Bucket website endpoint:[http://elasticbeanstalk-us-east-1-893271596042.s3-website-us-east-1.amazonaws.com].

## Steps :
    1.create AWS RDS database and s3 buckect.
    2.Using circleci pipeline with my project github.
    3.Add all environments variables.
    4.Check pipeline is success.
    5.check AWS EBS health is OK.

**all this point explained with screenshots in documentaion folder**

