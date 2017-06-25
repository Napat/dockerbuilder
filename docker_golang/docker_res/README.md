
## Ref
- https://medium.com/travis-on-docker/multi-stage-docker-builds-for-creating-tiny-go-images-e0e1867efe5a
- http://www.somkiat.cc/docker-with-multi-stage-build/

## Step
1. create builder(image with build tools)
`./create_builder.sh`

2. build source code
** Still issues **

3. create shipper(small alpine image with apps binary)
`./shipper_x8664.sh`

4. Run image
`docker run mygoapp_img`



