cd www
printenv > .env
eb init $EB_APP --region $AWS_REGION
eb deploy $EB_ENV
