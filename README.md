# centos7-dind

This centos7-dind is for building the container image of docker in docker of CentOS 7.

## About Container Image

If you want to specify the start options of the dockerd, it uses the DOCKER_ARGS variable.  
The following is a specified example of an option.

```
# docker run -itd --name instance --rm -e DOCKER_ARGS='--insecure-registry 192.168.10.33:5000' --privileged skyjokerxx/centos7:dind
```
