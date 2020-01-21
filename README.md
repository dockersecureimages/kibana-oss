# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.5.1-alpine-3.8.2
2020/01/21 11:14:04 [INFO] ▶ Start clair-scanner
2020/01/21 11:14:10 [INFO] ▶ Server listening on port 9279
2020/01/21 11:14:10 [INFO] ▶ Analyzing 1bb29d248cda54ae7e8f18074e92c79179d15d7d4844a7f5708cba0a154253d3
2020/01/21 11:14:11 [INFO] ▶ Analyzing e74d0609cb575bf841627cee6fd5942f45a5c1ac443dc10165bb529d0368cc09
2020/01/21 11:14:11 [INFO] ▶ Analyzing bed75f80ed22b88e72bb1ea92e25491d0eb99deacaa28f253d39bfc91ccceade
2020/01/21 11:14:11 [INFO] ▶ Analyzing 3d074de3d21e25396459c378387721ce70ce9094724e863b017dec3c60c6cc20
2020/01/21 11:14:11 [INFO] ▶ Analyzing 1f065e0341d359935e0e07a26d756e5bfda66962333fa3bbf216fcec7bcde08d
2020/01/21 11:14:11 [INFO] ▶ Analyzing 3f1454ec7870a4317f80c85a42dc01a5a855294482acc44a35e42147d791bb67
2020/01/21 11:14:11 [INFO] ▶ Analyzing 128e0f146a7e4869c51560bc79636d0eb98c4a726dcd3d5ce6e46d4d270a254d
2020/01/21 11:14:11 [INFO] ▶ Image [secureimages/kibana-oss:7.5.1-alpine-3.8.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/kibana-oss:7.5.1-alpine-3.8.2
2020-01-21T09:14:14.438Z        INFO    Need to update DB
2020-01-21T09:14:14.438Z        INFO    Downloading DB...
2020-01-21T09:14:18.169Z        INFO    Reopening DB...
2020-01-21T09:14:26.265Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.5.1-alpine-3.8.2 (alpine 3.8.2)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.5.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.5.1
2020/01/21 11:14:32 [INFO] ▶ Start clair-scanner
2020/01/21 11:14:43 [INFO] ▶ Server listening on port 9279
2020/01/21 11:14:43 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/21 11:14:43 [INFO] ▶ Analyzing c777cbe3f290b38e7f4813ce1b4ddd2ec44245bd4cb40bf3894c00cf14b62a6f
2020/01/21 11:14:44 [INFO] ▶ Analyzing 5285aa957f86cc33f0b5ae0463473c1b77b8d0870b5ead173c48351d6fe000a5
2020/01/21 11:14:44 [INFO] ▶ Analyzing 6199b3849b077605ea931bb9bca51089e5c0b6807d12e5d2a5e2ad40e1a17a0b
2020/01/21 11:14:44 [INFO] ▶ Analyzing 315020e272e252b79da0fe77d26f0d5f03e4e84738bc366c8763a01b6f0500c9
2020/01/21 11:14:45 [INFO] ▶ Analyzing 3712d83e69d69e5922cf76e7c5bf9d11eb6403cf12061ac59e35b90430178381
2020/01/21 11:14:45 [INFO] ▶ Analyzing d00aeb0dfe06c8426295109df5a35b4b26ecb5f783c88648a8629d9052bde5a9
2020/01/21 11:14:45 [INFO] ▶ Analyzing 22b3dfd9f1a86cb77a99a0dcd580dae07af312a9174d8a90bbed8e09ad831e92
2020/01/21 11:14:45 [INFO] ▶ Analyzing 6ed1fc0b02754b6c5706bda3ac85a9277a727f26768432d5382f6fd3ac511e69
2020/01/21 11:14:45 [INFO] ▶ Analyzing 73ac4004412d45f44e65b932b2e3f5756d0ad212f023a8306682b4729ae7028a
2020/01/21 11:14:45 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.5.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress docker.elastic.co/kibana/kibana-oss:7.5.1
2020-01-21T09:14:48.001Z        INFO    Need to update DB
2020-01-21T09:14:48.002Z        INFO    Downloading DB...
2020-01-21T09:14:52.022Z        INFO    Reopening DB...
2020-01-21T09:15:04.833Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.5.1 (centos 7.7.1908)
===========================================================
Total: 632 (UNKNOWN: 0, LOW: 61, MEDIUM: 459, HIGH: 106, CRITICAL: 6)
```
