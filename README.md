# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.5.2-alpine-3.8.2
2020/01/25 17:32:58 [INFO] ▶ Start clair-scanner
2020/01/25 17:33:05 [INFO] ▶ Server listening on port 9279
2020/01/25 17:33:05 [INFO] ▶ Analyzing 1bb29d248cda54ae7e8f18074e92c79179d15d7d4844a7f5708cba0a154253d3
2020/01/25 17:33:05 [INFO] ▶ Analyzing e74d0609cb575bf841627cee6fd5942f45a5c1ac443dc10165bb529d0368cc09
2020/01/25 17:33:05 [INFO] ▶ Analyzing bed75f80ed22b88e72bb1ea92e25491d0eb99deacaa28f253d39bfc91ccceade
2020/01/25 17:33:05 [INFO] ▶ Analyzing b57ebdce87bb0098fbeee35bee8f8ebf689b6e5d51f6d0248fe65e15ed0b3b77
2020/01/25 17:33:06 [INFO] ▶ Analyzing 83d9d24c252990118f5d27e94453772bcbb125d67c0c332383d987ccb0b35ce0
2020/01/25 17:33:06 [INFO] ▶ Analyzing c916ff2ab40f50017ac4efaf82ab39f629b522d823d7fe25125a5e1cef7119af
2020/01/25 17:33:06 [INFO] ▶ Analyzing b810822cf7bcf72c40050f73cc9a8f47051fac08b7c42ca111e9645022e9c6dd
2020/01/25 17:33:06 [INFO] ▶ Image [secureimages/kibana-oss:7.5.2-alpine-3.8.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/kibana-oss:7.5.2-alpine-3.8.2
2020-01-25T15:33:08.195Z        INFO    Need to update DB
2020-01-25T15:33:08.195Z        INFO    Downloading DB...
2020-01-25T15:33:12.178Z        INFO    Reopening DB...
2020-01-25T15:33:20.683Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.5.2-alpine-3.8.2 (alpine 3.8.2)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.5.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.5.2
2020/01/25 17:33:30 [INFO] ▶ Start clair-scanner
2020/01/25 17:33:41 [INFO] ▶ Server listening on port 9279
2020/01/25 17:33:41 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/25 17:33:41 [INFO] ▶ Analyzing 6df7bdb8433fc2093f215f4bfd889df7fa9afc946333234dd379862cb187095a
2020/01/25 17:33:42 [INFO] ▶ Analyzing c345a8988ca6de93f741589d154d87fc85fabcb638a8423b5e4ed3f366c6092b
2020/01/25 17:33:42 [INFO] ▶ Analyzing 45c72ebec77d9c80a696558218385525bf07d72d1d93b56fbda303a87caa0cc4
2020/01/25 17:33:42 [INFO] ▶ Analyzing 07225283878388f811e8136923daa7466f70c6020d2c57032a3a43b489367dc3
2020/01/25 17:33:43 [INFO] ▶ Analyzing c4f7898a108639d51204d006f4904eb364f9a92a8ab4140fd0c9b49be2dd66dc
2020/01/25 17:33:43 [INFO] ▶ Analyzing 2b5093461166bd8d103040e9764889ea1cefd6d3350268e9df73e71d05703a60
2020/01/25 17:33:43 [INFO] ▶ Analyzing 9f702b65a446a7f0484e18cb98f35b3ca8d2a867677dd08f7c83ff4c0e440781
2020/01/25 17:33:43 [INFO] ▶ Analyzing d97488ffa57bd1b7cefae05c1f84d8daf98f748c8e693d0126bc71db2bbb45c7
2020/01/25 17:33:43 [INFO] ▶ Analyzing c714885363233fb49bdf061ec13a700e6fd71c1e274f07a7677d373e9869dbb0
2020/01/25 17:33:43 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.5.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/kibana/kibana-oss:7.5.2
2020-01-25T15:33:45.475Z        INFO    Need to update DB
2020-01-25T15:33:45.475Z        INFO    Downloading DB...
2020-01-25T15:33:49.505Z        INFO    Reopening DB...
2020-01-25T15:34:02.602Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.5.2 (centos 7.7.1908)
===========================================================
Total: 635 (UNKNOWN: 0, LOW: 61, MEDIUM: 461, HIGH: 107, CRITICAL: 6)
```
