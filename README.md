# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~580MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.7.0-alpine-3.11.5
2020/05/14 12:34:45 [INFO] ▶ Start clair-scanner
2020/05/14 12:34:59 [INFO] ▶ Server listening on port 9279
2020/05/14 12:34:59 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/05/14 12:34:59 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/05/14 12:34:59 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/05/14 12:34:59 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/05/14 12:34:59 [INFO] ▶ Analyzing c30c8126b8cea116d245d58f0b66b63dce904c34d527c65c7b48d507ec926bd6
2020/05/14 12:35:00 [INFO] ▶ Analyzing 702b5a204a822d3c98a9e9e0aaf622940308de5381b0d0cf2f8ab616155970cf
2020/05/14 12:35:00 [INFO] ▶ Analyzing 65158a4259c31e47b1abe518519a6e60edb1f31be878eb22c3d974d4a60996cc
2020/05/14 12:35:00 [INFO] ▶ Analyzing 372b436e5b744fc0f37ba51b4fbc9b70679e2941e6c365f7f666ebfeaad185ba
2020/05/14 12:35:00 [INFO] ▶ Image [secureimages/kibana-oss:7.7.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/kibana-oss:7.7.0-alpine-3.11.5
2020-05-14T09:35:03.666Z        INFO    Need to update DB
2020-05-14T09:35:03.666Z        INFO    Downloading DB...
2020-05-14T09:35:23.569Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.7.0-alpine-3.11.5 (alpine 3.11.5)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~770MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.7.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.7.0
2020/05/14 12:35:32 [INFO] ▶ Start clair-scanner
2020/05/14 12:35:58 [INFO] ▶ Server listening on port 9279
2020/05/14 12:35:58 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/05/14 12:35:58 [INFO] ▶ Analyzing b3353523614e066fc31c3985ea83631678d9221cce27c12893be38462a5caf35
2020/05/14 12:35:58 [INFO] ▶ Analyzing 35e71635c9282cfdeff29639cd5b9cae54ad0ddb9989aa9270c4fbe3f5edc9e7
2020/05/14 12:35:58 [INFO] ▶ Analyzing d86ed9d6614ea539cdb4affa6df88c32536ef8dd404ef9f84f364c374fc0da20
2020/05/14 12:35:58 [INFO] ▶ Analyzing 21852efae7f314e28bad5c8b4c231ddcd9f6de0184a9a2664445c1b9a367d7fa
2020/05/14 12:35:59 [INFO] ▶ Analyzing 26a571ac15b2a8815a9cac6befceb0387eb89f685b030c5d7e117f954476ad0f
2020/05/14 12:35:59 [INFO] ▶ Analyzing f2276801b3e5c2078e797dc851a8206e0df9a1081e181f393bb0a9a40ccf9ef1
2020/05/14 12:35:59 [INFO] ▶ Analyzing 39f73060cba18f35093742d290f4bf366755ae0f47dcd8cc0931982ef0d8faaf
2020/05/14 12:35:59 [INFO] ▶ Analyzing 4d8c477bf1b9cedd92a499c3e120478de100cfa34773d11f5505adffbe8846f2
2020/05/14 12:35:59 [INFO] ▶ Analyzing 14a2a00952127012402aacd48074ceb57de32b9ab7441007414d1f0f5f62e796
2020/05/14 12:35:59 [INFO] ▶ Analyzing b40b00773fbfa867ea33610578e024611610225863678e1f2ff4f1216643ff18
2020/05/14 12:35:59 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.7.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress docker.elastic.co/kibana/kibana-oss:7.7.0
2020-05-14T09:36:01.271Z        INFO    Need to update DB
2020-05-14T09:36:01.271Z        INFO    Downloading DB...
2020-05-14T09:36:26.967Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.7.0 (centos 7.8.2003)
===========================================================
Total: 610 (UNKNOWN: 0, LOW: 368, MEDIUM: 237, HIGH: 5, CRITICAL: 0)
```
