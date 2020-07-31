# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~590MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.8.1-alpine-3.11.6
2020/07/31 16:38:47 [INFO] ▶ Start clair-scanner
2020/07/31 16:39:05 [INFO] ▶ Server listening on port 9279
2020/07/31 16:39:05 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/07/31 16:39:05 [INFO] ▶ Analyzing 084d26ff56f6d6058b1f1469b3cd99f64993b8957fad0bbbaab2608a23f2ebc9
2020/07/31 16:39:05 [INFO] ▶ Analyzing a0ba18f0180ad875843025a3665d13c7ad165bac7018a320a6690379fc87c551
2020/07/31 16:39:05 [INFO] ▶ Analyzing 2816de5c1cf7aac29db447e6623c4e5c1487bb2e3951db4feda653e7c6473bd2
2020/07/31 16:39:05 [INFO] ▶ Analyzing 14590d41ede5a6251448e02c1796b4de35f15d34fd2aeb17ce8635b8b349cd79
2020/07/31 16:39:06 [INFO] ▶ Analyzing e23bcd49cdbd5fe6e86e4100178ac93bf65a6248a0d734806393fef1e780a4d2
2020/07/31 16:39:06 [INFO] ▶ Analyzing efd864d673fd3a76678e50b7965f4f04f74e9f669689c67bc0d8c3627d47bd8d
2020/07/31 16:39:06 [INFO] ▶ Image [secureimages/kibana-oss:7.8.1-alpine-3.11.6] contains NO unapproved vulnerabilities

```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress secureimages/kibana-oss:7.8.1-alpine-3.11.6
2020-07-31T13:39:08.301Z        INFO    Need to update DB
2020-07-31T13:39:08.301Z        INFO    Downloading DB...
2020-07-31T13:39:30.944Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.8.1-alpine-3.11.6 (alpine 3.11.6)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~835MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.8.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.8.1
2020/07/31 16:39:48 [INFO] ▶ Start clair-scanner
2020/07/31 16:40:13 [INFO] ▶ Server listening on port 9279
2020/07/31 16:40:13 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/07/31 16:40:13 [INFO] ▶ Analyzing 017e7d8fa1761c6a09c0f6dce5a38ba2b85bd19c7563859895185fadad5c459a
2020/07/31 16:40:13 [INFO] ▶ Analyzing bf9bc97b091528db2f6c242f0eb93f1cf722cc0652873a69330b655299d08f78
2020/07/31 16:40:13 [INFO] ▶ Analyzing ed5c38e9cb57c24f2fcc1923f45611c14a9bdfef9280971363ee1ae21beaefaa
2020/07/31 16:40:13 [INFO] ▶ Analyzing 0099d7bfa2e1ea42d8572e021243b1da5e87c3cc275102a7a11e91351689414e
2020/07/31 16:40:14 [INFO] ▶ Analyzing 54389f4f4f04b4084c0ba24453ab4ba093608ebbc0eec8204c62647d724ed374
2020/07/31 16:40:14 [INFO] ▶ Analyzing 60f15f462b61cdc8825ff0618da14bbb2eec3f298066bd2fac0c3f1f9ad0f88a
2020/07/31 16:40:14 [INFO] ▶ Analyzing 277a06a26338f489fff288d9f45467579ff58fb822b5577b146f3bbfdfff3d4b
2020/07/31 16:40:14 [INFO] ▶ Analyzing 4fca164a21b105cf4f3bd60cdf5bf6e5b7892fd5412e31daf4e5d2bc20f9af9d
2020/07/31 16:40:14 [INFO] ▶ Analyzing c185143410e214b16683f054cd0194d8be1afd8484245fb10a0a22e8a4763229
2020/07/31 16:40:14 [INFO] ▶ Analyzing ddda03014d171d60723f4652ec9c873de8277fd5d5a6a3b73171cde9873570bb
2020/07/31 16:40:14 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.8.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress docker.elastic.co/kibana/kibana-oss:7.8.1
2020-07-31T13:40:17.186Z        INFO    Need to update DB
2020-07-31T13:40:17.186Z        INFO    Downloading DB...
2020-07-31T13:40:50.816Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.8.1 (centos 7.8.2003)
===========================================================
Total: 628 (UNKNOWN: 0, LOW: 368, MEDIUM: 255, HIGH: 5, CRITICAL: 0)
```
