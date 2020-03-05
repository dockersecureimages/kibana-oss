# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.6.1-alpine-3.11.3
2020/03/05 21:49:42 [INFO] ▶ Start clair-scanner
2020/03/05 21:49:50 [INFO] ▶ Server listening on port 9279
2020/03/05 21:49:50 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/05 21:49:50 [INFO] ▶ Analyzing 672cba640de0ddec2dae038dac4fa5f0e52eb339fbc31b817b1e98cb2bcda676
2020/03/05 21:49:50 [INFO] ▶ Analyzing feba9e50fcbc6917d8a9a99c061179564c3a9b60da3b1e2602b6110fc0bd6d7f
2020/03/05 21:49:50 [INFO] ▶ Analyzing 886faea22c9843e9a90b734a79694dfbe98e5a0720e2cbdcad6ac25016adae5b
2020/03/05 21:49:50 [INFO] ▶ Analyzing 2d0465de8618a8c90fa16940bc8cf287fb6d807784519504de13e92db5cd5261
2020/03/05 21:49:51 [INFO] ▶ Analyzing 931c1adba970e3d169ec00f82e0c10601a9a703fd045f0d542e13ffc475bddaf
2020/03/05 21:49:51 [INFO] ▶ Analyzing 366d5dea125421882b8a748a9222236ea7dc7c8df8912ec34c25ffba19982873
2020/03/05 21:49:51 [INFO] ▶ Analyzing a33868ed6dff18038f0d8afff540d67665c224fc40d007aa6ca1fe7ab30a25e0
2020/03/05 21:49:51 [INFO] ▶ Image [secureimages/kibana-oss:7.6.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.0 --no-progress secureimages/kibana-oss:7.6.1-alpine-3.11.3
2020-03-05T19:50:04.344Z        INFO    Need to update DB
2020-03-05T19:50:04.344Z        INFO    Downloading DB...
2020-03-05T19:50:08.924Z        INFO    Reopening DB...
2020-03-05T19:50:20.382Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.6.1-alpine-3.11.3 (alpine 3.11.3)
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
2020/03/05 21:50:26 [INFO] ▶ Start clair-scanner
2020/03/05 21:50:44 [INFO] ▶ Server listening on port 9279
2020/03/05 21:50:44 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 21:50:44 [INFO] ▶ Analyzing c80efae86c01b3d986a690778f0a6d65bbf1312e1a5b401a644e21a0af309248
2020/03/05 21:50:44 [INFO] ▶ Analyzing 00e3bec5470b0f9f223a8f4e381b5d189427f35b7f63f6d598a7c04072b75eb5
2020/03/05 21:50:44 [INFO] ▶ Analyzing 95825355eb672908614513e57ea76d98e4bd20de20eb20c1f764a289fa18acea
2020/03/05 21:50:44 [INFO] ▶ Analyzing 918167df51187a1c519407a3d2bffb6f892de28384407cba6656389b37a371ad
2020/03/05 21:50:44 [INFO] ▶ Analyzing 4831e57b47634308905e9fa3e2699436efc733b660327c04dfde273ebc6aa7b8
2020/03/05 21:50:44 [INFO] ▶ Analyzing 0adb71c524c98e556958b458edfe05855fc9491a5ddf8f21bb0d0485ad336fe9
2020/03/05 21:50:44 [INFO] ▶ Analyzing 52245e4aaca91c6758141ea463fcc431a426004526b5a7f9b12f49710f345f41
2020/03/05 21:50:44 [INFO] ▶ Analyzing bf401e19ed8b2d9bb8df04c2dde6b5c7c0353e5efc56e972e322e0b0ec05e300
2020/03/05 21:50:44 [INFO] ▶ Analyzing feedfbdde8fccc13da5eb3dd52bbe86d444fe0519c3165430a1907726c56f5b5
2020/03/05 21:50:44 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.0 --no-progress docker.elastic.co/kibana/kibana-oss:7.6.1
2020-03-05T19:50:49.131Z        INFO    Need to update DB
2020-03-05T19:50:49.131Z        INFO    Downloading DB...
2020-03-05T19:50:53.056Z        INFO    Reopening DB...
2020-03-05T19:51:10.107Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.6.1 (centos 7.7.1908)
===========================================================
Total: 631 (UNKNOWN: 0, LOW: 61, MEDIUM: 460, HIGH: 106, CRITICAL: 4)
```
