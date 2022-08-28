![PiplineAutomatedDeployment](https://user-images.githubusercontent.com/108579670/187048825-d652ab7b-cdda-4e6b-a1f5-5ac5ff68d598.png)
![circleci-lifecycle](https://user-images.githubusercontent.com/108579670/187068818-7debdb7d-522f-420a-943d-339556c62861.png)


reference: https://enrq.me/dev/2020/10/18/circleci-basics/
- this process is named a pipeline. Each time modifications are pushed into the repository, CircleCI triggers a new pipeline, executing what’s described in the configuration.
- CircleCI will deploy the code for frontend on S3 bucket and for the server on EBS
