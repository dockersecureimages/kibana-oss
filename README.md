# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.6.1-alpine-3.11.5
2020/03/24 20:12:19 [INFO] ▶ Start clair-scanner
2020/03/24 20:12:27 [INFO] ▶ Server listening on port 9279
2020/03/24 20:12:27 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 20:12:27 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/03/24 20:12:27 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/03/24 20:12:27 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/03/24 20:12:27 [INFO] ▶ Analyzing 73f796a3a8e446b77f7073d6db1bcadf8cea0fef21edf0b7b50c54a1ced09562
2020/03/24 20:12:28 [INFO] ▶ Analyzing 5fd6a5c347a8fb1499df715cbcbd190f4646b4d0c503559c67fd78349632a71d
2020/03/24 20:12:28 [INFO] ▶ Analyzing 5798605a62177a7d8f21f8f838c443fcb4eecdcc7395df6aae7f737e72a39943
2020/03/24 20:12:28 [INFO] ▶ Analyzing 921194cba143dd00f6e6a71677d2864272966703f53aeb99f1bcaf7f941de2ef
2020/03/24 20:12:28 [INFO] ▶ Image [secureimages/kibana-oss:7.6.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/kibana-oss:7.6.1-alpine-3.11.5
2020-03-24T18:12:30.429Z        INFO    Need to update DB
2020-03-24T18:12:30.429Z        INFO    Downloading DB...
2020-03-24T18:12:34.676Z        INFO    Reopening DB...
2020-03-24T18:12:46.985Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.6.1-alpine-3.11.5 (alpine 3.11.5)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.6.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.6.1
2020/03/24 20:12:54 [INFO] ▶ Start clair-scanner
2020/03/24 20:13:12 [INFO] ▶ Server listening on port 9279
2020/03/24 20:13:12 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/24 20:13:12 [INFO] ▶ Analyzing c80efae86c01b3d986a690778f0a6d65bbf1312e1a5b401a644e21a0af309248
2020/03/24 20:13:12 [INFO] ▶ Analyzing 00e3bec5470b0f9f223a8f4e381b5d189427f35b7f63f6d598a7c04072b75eb5
2020/03/24 20:13:12 [INFO] ▶ Analyzing 95825355eb672908614513e57ea76d98e4bd20de20eb20c1f764a289fa18acea
2020/03/24 20:13:12 [INFO] ▶ Analyzing 918167df51187a1c519407a3d2bffb6f892de28384407cba6656389b37a371ad
2020/03/24 20:13:13 [INFO] ▶ Analyzing 4831e57b47634308905e9fa3e2699436efc733b660327c04dfde273ebc6aa7b8
2020/03/24 20:13:13 [INFO] ▶ Analyzing 0adb71c524c98e556958b458edfe05855fc9491a5ddf8f21bb0d0485ad336fe9
2020/03/24 20:13:13 [INFO] ▶ Analyzing 52245e4aaca91c6758141ea463fcc431a426004526b5a7f9b12f49710f345f41
2020/03/24 20:13:13 [INFO] ▶ Analyzing bf401e19ed8b2d9bb8df04c2dde6b5c7c0353e5efc56e972e322e0b0ec05e300
2020/03/24 20:13:13 [INFO] ▶ Analyzing feedfbdde8fccc13da5eb3dd52bbe86d444fe0519c3165430a1907726c56f5b5
2020/03/24 20:13:13 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/kibana/kibana-oss:7.6.1
2020-03-24T18:13:17.060Z        INFO    Need to update DB
2020-03-24T18:13:17.060Z        INFO    Downloading DB...
2020-03-24T18:13:20.917Z        INFO    Reopening DB...
2020-03-24T18:13:42.226Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.6.1 (centos 7.7.1908)
===========================================================
Total: 639 (UNKNOWN: 0, LOW: 65, MEDIUM: 460, HIGH: 110, CRITICAL: 4)
```
