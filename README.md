# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.6.0-alpine-3.11.2
2020/02/12 10:49:16 [INFO] ▶ Start clair-scanner
2020/02/12 10:49:24 [INFO] ▶ Server listening on port 9279
2020/02/12 10:49:24 [INFO] ▶ Analyzing 30a36bc16c80b7f41fbae0f2a65857845a322dc98c11b67026ab338cdd2642c8
2020/02/12 10:49:24 [INFO] ▶ Analyzing 8c212a5233068cf7695712b9b457b488f7490f2bf472de889541f98884af37e8
2020/02/12 10:49:24 [INFO] ▶ Analyzing 4a8f6c8da7656b87444b07bc5525dac7c05ab051b4ac16da7667063aa33ea1d8
2020/02/12 10:49:24 [INFO] ▶ Analyzing 01ac1b574b40f3b261a59e4dc30ad34c14f3dd398959d4a0808b80b17eaf4ba1
2020/02/12 10:49:24 [INFO] ▶ Analyzing a073eaed538a67dbf3a5bc7d56c173867d38069c45d17ae2c9b4fd02db492d76
2020/02/12 10:49:25 [INFO] ▶ Analyzing 147d9d13f4ef9edbd7294d5a3648156ecae21a3db2139bdf40f4bc5c8b95203d
2020/02/12 10:49:25 [INFO] ▶ Analyzing 4264575fc8f29d5d64aa03fe5f3d3d913fdf92bb0294d641b8d211cbfaa65a23
2020/02/12 10:49:25 [INFO] ▶ Analyzing 7949280a04eeced8bc3ca36b885c759e3065b3a18518924294fd7bdde98e4a0a
2020/02/12 10:49:25 [INFO] ▶ Image [secureimages/kibana-oss:7.6.0-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/kibana-oss:7.6.0-alpine-3.11.2
2020-02-12T08:49:27.344Z        INFO    Need to update DB
2020-02-12T08:49:27.344Z        INFO    Downloading DB...
2020-02-12T08:49:33.351Z        INFO    Reopening DB...
2020-02-12T08:49:42.720Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.6.0-alpine-3.11.2 (alpine 3.11.2)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.6.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.6.0
2020/02/12 10:49:51 [INFO] ▶ Start clair-scanner
2020/02/12 10:50:09 [INFO] ▶ Server listening on port 9279
2020/02/12 10:50:09 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/12 10:50:09 [INFO] ▶ Analyzing a289fceb0fda4929f3bdfa250a6af9cd9d7f2807b61c4e00519cd1c70655ea24
2020/02/12 10:50:09 [INFO] ▶ Analyzing 9918116cbf7e53e3ba780df52edc41e3c8450c7168fb9ff693afa0dce7a23421
2020/02/12 10:50:09 [INFO] ▶ Analyzing 50bd6638ffe49be1fa9fa933921a1e01e5b02d6ea253c727c9b4eac0e34e4ce2
2020/02/12 10:50:09 [INFO] ▶ Analyzing 6ffdebc48b12ef252d57fd8320abd1683a1bcfcf4467c15bdf8912b7a1cd509b
2020/02/12 10:50:10 [INFO] ▶ Analyzing 2d50fa656185d1e8b2c1e29934733dfd711fd0db494a8e07479ad3251adbb9ec
2020/02/12 10:50:10 [INFO] ▶ Analyzing 4577fa34e255f1c3488d3b9cc7b0d7865e01f09d6e2576a8da4776d907ee0cdb
2020/02/12 10:50:10 [INFO] ▶ Analyzing 5e554580ccafc4a67e6208884da181ca5ad34239ae9f9ca74f3c801175bb365d
2020/02/12 10:50:10 [INFO] ▶ Analyzing cbae7e3e9ce745974a8dbcd2035d57c1ec145ee06c9ce007aa46a2e6eb123e64
2020/02/12 10:50:10 [INFO] ▶ Analyzing 45f6fd00a043549bb78112d613b9ec5f29aef4fd56a91f13cd37e0c50f83078c
2020/02/12 10:50:10 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/kibana/kibana-oss:7.6.0
2020-02-12T08:50:15.270Z        INFO    Need to update DB
2020-02-12T08:50:15.270Z        INFO    Downloading DB...
2020-02-12T08:50:18.763Z        INFO    Reopening DB...
2020-02-12T08:50:32.847Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.6.0 (centos 7.7.1908)
===========================================================
Total: 623 (UNKNOWN: 0, LOW: 59, MEDIUM: 453, HIGH: 107, CRITICAL: 4)
```
