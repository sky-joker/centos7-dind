# centos7-dind

[![](https://img.shields.io/github/license/sky-joker/centos7-dind?style=for-the-badge)](https://github.com/sky-joker/centos7-dind/blob/master/LICENSE.txt)
[![](https://img.shields.io/docker/image-size/skyjokerxx/centos7?sort=date&style=for-the-badge)](https://hub.docker.com/r/skyjokerxx/centos7)

This centos7-dind is for building the container image of docker in docker of CentOS 7.

## About Container Image

If you want to specify the start options of the dockerd, it uses the DOCKER_ARGS variable.  
The following is a specified example of an option.

```
# docker run -itd --name instance --rm -e DOCKER_ARGS='--insecure-registry 192.168.10.33:5000' --privileged skyjokerxx/centos7:dind
```
