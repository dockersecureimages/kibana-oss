# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~581MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.8.0-alpine-3.11.6
2020/06/19 20:30:59 [INFO] ▶ Start clair-scanner
2020/06/19 20:31:17 [INFO] ▶ Server listening on port 9279
2020/06/19 20:31:17 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/06/19 20:31:17 [INFO] ▶ Analyzing 084d26ff56f6d6058b1f1469b3cd99f64993b8957fad0bbbaab2608a23f2ebc9
2020/06/19 20:31:17 [INFO] ▶ Analyzing a0ba18f0180ad875843025a3665d13c7ad165bac7018a320a6690379fc87c551
2020/06/19 20:31:17 [INFO] ▶ Analyzing 2816de5c1cf7aac29db447e6623c4e5c1487bb2e3951db4feda653e7c6473bd2
2020/06/19 20:31:17 [INFO] ▶ Analyzing df8936d05f81e2b3c9082c34f7bf4dff584dff80a7666a7274a426ea1855257d
2020/06/19 20:31:17 [INFO] ▶ Analyzing 0900a26cd551a3ccc6135f2863496bdcb5c92cc7e3b632d66b4926e794b2a68e
2020/06/19 20:31:17 [INFO] ▶ Analyzing 5878d42ed08e2f6316b50835deecc78cda539d57e18b0d6d3a9ae993f50153d8
2020/06/19 20:31:17 [INFO] ▶ Image [secureimages/kibana-oss:7.8.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/kibana-oss:7.8.0-alpine-3.11.6
2020-06-19T17:31:21.088Z        INFO    Need to update DB
2020-06-19T17:31:21.088Z        INFO    Downloading DB...
2020-06-19T17:31:45.500Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.8.0-alpine-3.11.6 (alpine 3.11.6)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~823MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.8.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.8.0
2020/06/19 20:31:50 [INFO] ▶ Start clair-scanner
2020/06/19 20:32:14 [INFO] ▶ Server listening on port 9279
2020/06/19 20:32:14 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/19 20:32:14 [INFO] ▶ Analyzing 2fe1bcada5213b86f094e45588f069e4d044c966e1f10bcd65fc6363fa78752a
2020/06/19 20:32:15 [INFO] ▶ Analyzing 84a11c0d094254613bab09bbd9e85715ae9e9e60445e7ef3047646c1ccfcfd55
2020/06/19 20:32:15 [INFO] ▶ Analyzing 5e9149e4fc7c6a977709fd696195e0bbe1785a8411d218f7725141175256b1a2
2020/06/19 20:32:15 [INFO] ▶ Analyzing fbd6213b5cc71e59324c1023ca43e17214e0cedafd0ca8486c95dd7a130720e1
2020/06/19 20:32:16 [INFO] ▶ Analyzing 3a5ccf2d1c887e56ce39d537613cfa8268ca9fc4c469897e5e9bcb5ebac051e4
2020/06/19 20:32:16 [INFO] ▶ Analyzing 8cf8b05dec1c1c6c3a47d398b04d70863d162a0712359bf2baf23bbc79d3a0d5
2020/06/19 20:32:16 [INFO] ▶ Analyzing cea1768e0f6662f01a3e2dd9c45de8a2851cca3c13e85cb810092a21e4d2a4a1
2020/06/19 20:32:16 [INFO] ▶ Analyzing 239c88bfe87cf9cacc2e241fbc47804dc2130a56f5759e9510bc72dff86ed61a
2020/06/19 20:32:16 [INFO] ▶ Analyzing 814ab3d4152e8fe38fdbf6c1d54e5da29d835d840bdebc3582fa4d0a62859a1f
2020/06/19 20:32:16 [INFO] ▶ Analyzing 40bc80caad97fe9fdd556b8b37eaa61489e85044b91e6283bb78cd364b788ca5
2020/06/19 20:32:16 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.8.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/kibana/kibana-oss:7.8.0
2020-06-19T17:32:18.390Z        INFO    Need to update DB
2020-06-19T17:32:18.390Z        INFO    Downloading DB...
2020-06-19T17:32:46.821Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.8.0 (centos 7.8.2003)
===========================================================
Total: 624 (UNKNOWN: 0, LOW: 367, MEDIUM: 252, HIGH: 5, CRITICAL: 0)
```
