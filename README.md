# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~505MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.9.1-alpine-3.11.6
2020/09/04 15:56:23 [INFO] ▶ Start clair-scanner
2020/09/04 15:56:31 [INFO] ▶ Server listening on port 9279
2020/09/04 15:56:31 [INFO] ▶ Analyzing a9cc4ace48cd792ef888ade20810f82f6c24aaf2436f30337a2a712cd054dc97
2020/09/04 15:56:31 [INFO] ▶ Analyzing 7b8ac32affcc27ca061c9239750dad0d9f6c4dc2e2f3bffe9535a665d49aa5a1
2020/09/04 15:56:31 [INFO] ▶ Analyzing 6149978933774d46e992feb30831c74c9818366470106c2c7349024ad96f4523
2020/09/04 15:56:31 [INFO] ▶ Analyzing 34b2f9f124a17126c73ea5eb93f28d44ac1819cb5803a47529eef45de5292070
2020/09/04 15:56:31 [INFO] ▶ Analyzing 9fe617164063a13d5fec1800acd53634a6ece836048f72967d34453e56fc938f
2020/09/04 15:56:31 [INFO] ▶ Analyzing 16ab04c38a9528f96f48a4fb34bf35ed419fc3d531823586aeb82dcaab5f94ff
2020/09/04 15:56:31 [INFO] ▶ Analyzing ba01884378a5817383ed72fc880e5f08907b8f87035e6bc82418f7b9f0f9753c
2020/09/04 15:56:31 [INFO] ▶ Analyzing d7fe3fa473d99a8e4eb74e9b967091b76abcf8787bcfa0aefa2557c243d298df
2020/09/04 15:56:31 [INFO] ▶ Image [secureimages/kibana-oss:7.9.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/kibana-oss:7.9.1-alpine-3.11.6
2020-09-04T15:56:34.564Z        INFO    Need to update DB
2020-09-04T15:56:34.564Z        INFO    Downloading DB...
2020-09-04T15:56:47.945Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.9.1-alpine-3.11.6 (alpine 3.11.6)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~698MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.9.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.9.1
2020/09/04 15:57:07 [INFO] ▶ Start clair-scanner
2020/09/04 15:57:22 [INFO] ▶ Server listening on port 9279
2020/09/04 15:57:22 [INFO] ▶ Analyzing 33b5e87a65b65985a0445827bd27436b3467bb578d1b1cc2aa0b6000685fb4bf
2020/09/04 15:57:22 [INFO] ▶ Analyzing c06f3c44565f6e71cd152af3c0ac5fffd9139c75fe05498f04498535a5484dbf
2020/09/04 15:57:24 [INFO] ▶ Analyzing 08dad683e81975b51a7e97775e1901dc29c5483e301b4f787eee93dc4a4a46b4
2020/09/04 15:57:24 [INFO] ▶ Analyzing e98bdb5ee0bf173430b2ff022749dffd11e89d0f42c1ae034eec8f1821c8bbad
2020/09/04 15:57:24 [INFO] ▶ Analyzing a1f99da55bd81ab7d66ce6d393b8ece6c97438eed8908a93e58fb9ddb96df629
2020/09/04 15:57:25 [INFO] ▶ Analyzing 1d8e7a78e08c7d9820fae25057078705f61228762c0cc959b87a61b88ddb6c10
2020/09/04 15:57:25 [INFO] ▶ Analyzing 95f07ad9aeccdc78146417b3e061760513060d210220ed9088af58d6f0b8be4e
2020/09/04 15:57:25 [INFO] ▶ Analyzing 578e640e9c87de4fc9a0e3f0d2a544603f67229802b921aaabc1379b56ae5a6e
2020/09/04 15:57:25 [INFO] ▶ Analyzing 095732dfa30f404c6e77cbc573d3e4471d16c095555526e29ba7daa693d1da12
2020/09/04 15:57:25 [INFO] ▶ Analyzing c35bc212382791e9d04ee3255ec42d3fb97cb93393052403537d1cceb3c87855
2020/09/04 15:57:25 [INFO] ▶ Analyzing da8a4149ca8a211e38525d71278143d83f62b6293348cad4676dbaabd0364748
2020/09/04 15:57:25 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.9.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress docker.elastic.co/kibana/kibana-oss:7.9.1
2020-09-04T15:57:27.111Z        INFO    Need to update DB
2020-09-04T15:57:27.111Z        INFO    Downloading DB...
2020-09-04T15:57:43.626Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.9.1 (centos 7.8.2003)
===========================================================
Total: 646 (UNKNOWN: 0, LOW: 372, MEDIUM: 269, HIGH: 5, CRITICAL: 0)
```
