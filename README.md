# pycares-lambda-layers

`Solution for No module named pycares._cares`

### to rebuild the layer use the command below(docker required) ↓

```console
docker run -v "$PWD":/var/task "public.ecr.aws/sam/build-python3.8" /bin/sh -c "pip install -r requirements.txt -t python/lib/python3.8/site-packages/; exit"
zip -r sd-scan-lib-layer.zip python > /dev/null
```

change **python3.8** to  your lambda enviroment python version 
you can find all aws lambda enviroment docker images [here](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-image-repositories.html)
This example is for pycares only, but you can change *requirements.txt* and rebuild the later for any python library or separate all the dependencies into one layer. 

#### Some useful links ↓

[How do I create a Lambda layer](https://aws.amazon.com/premiumsupport/knowledge-center/lambda-layer-simulated-docker/)

[Deploy Python Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/python-package.html)

[Image repository URIs](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-image-repositories.html)
