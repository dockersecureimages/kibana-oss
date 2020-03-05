# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.6.1-alpine-3.11.2
2020/03/05 15:41:16 [INFO] ▶ Start clair-scanner
2020/03/05 15:41:24 [INFO] ▶ Server listening on port 9279
2020/03/05 15:41:24 [INFO] ▶ Analyzing 30a36bc16c80b7f41fbae0f2a65857845a322dc98c11b67026ab338cdd2642c8
2020/03/05 15:41:24 [INFO] ▶ Analyzing 8c212a5233068cf7695712b9b457b488f7490f2bf472de889541f98884af37e8
2020/03/05 15:41:24 [INFO] ▶ Analyzing 4a8f6c8da7656b87444b07bc5525dac7c05ab051b4ac16da7667063aa33ea1d8
2020/03/05 15:41:24 [INFO] ▶ Analyzing 01ac1b574b40f3b261a59e4dc30ad34c14f3dd398959d4a0808b80b17eaf4ba1
2020/03/05 15:41:24 [INFO] ▶ Analyzing bf5b0577cdbf1a22d191eac85912ac62174be319f24032baa7240d15a7129da2
2020/03/05 15:41:26 [INFO] ▶ Analyzing 5d903b84ce385f350f45b1e4d34800ef5627a09ee2b8f4aebcb280ae4554b19a
2020/03/05 15:41:26 [INFO] ▶ Analyzing 6cb29921e66be5df4610f7c8a36ac7b0349b04e78b0286a35bddcc412a3eeb99
2020/03/05 15:41:26 [INFO] ▶ Analyzing 5f7f16b4130f094bdc411b27d2a9dafbb44db9f4ee53351f6518ba08cbdc0930
2020/03/05 15:41:26 [INFO] ▶ Image [secureimages/kibana-oss:7.6.1-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/kibana-oss:7.6.1-alpine-3.11.2
2020-03-05T13:41:28.276Z        INFO    Need to update DB
2020-03-05T13:41:28.276Z        INFO    Downloading DB...
2020-03-05T13:41:32.652Z        INFO    Reopening DB...
2020-03-05T13:41:42.280Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.6.1-alpine-3.11.2 (alpine 3.11.2)
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
2020/03/05 15:41:49 [INFO] ▶ Start clair-scanner
2020/03/05 15:42:03 [INFO] ▶ Server listening on port 9279
2020/03/05 15:42:03 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 15:42:03 [INFO] ▶ Analyzing c80efae86c01b3d986a690778f0a6d65bbf1312e1a5b401a644e21a0af309248
2020/03/05 15:42:03 [INFO] ▶ Analyzing 00e3bec5470b0f9f223a8f4e381b5d189427f35b7f63f6d598a7c04072b75eb5
2020/03/05 15:42:03 [INFO] ▶ Analyzing 95825355eb672908614513e57ea76d98e4bd20de20eb20c1f764a289fa18acea
2020/03/05 15:42:03 [INFO] ▶ Analyzing 918167df51187a1c519407a3d2bffb6f892de28384407cba6656389b37a371ad
2020/03/05 15:42:04 [INFO] ▶ Analyzing 4831e57b47634308905e9fa3e2699436efc733b660327c04dfde273ebc6aa7b8
2020/03/05 15:42:04 [INFO] ▶ Analyzing 0adb71c524c98e556958b458edfe05855fc9491a5ddf8f21bb0d0485ad336fe9
2020/03/05 15:42:04 [INFO] ▶ Analyzing 52245e4aaca91c6758141ea463fcc431a426004526b5a7f9b12f49710f345f41
2020/03/05 15:42:04 [INFO] ▶ Analyzing bf401e19ed8b2d9bb8df04c2dde6b5c7c0353e5efc56e972e322e0b0ec05e300
2020/03/05 15:42:04 [INFO] ▶ Analyzing feedfbdde8fccc13da5eb3dd52bbe86d444fe0519c3165430a1907726c56f5b5
2020/03/05 15:42:04 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress docker.elastic.co/kibana/kibana-oss:7.6.1
2020-03-05T13:42:05.923Z        INFO    Need to update DB
2020-03-05T13:42:05.923Z        INFO    Downloading DB...
2020-03-05T13:42:10.728Z        INFO    Reopening DB...
2020-03-05T13:42:26.237Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.6.1 (centos 7.7.1908)
===========================================================
Total: 631 (UNKNOWN: 0, LOW: 61, MEDIUM: 460, HIGH: 106, CRITICAL: 4)
```
