# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.6.0-alpine-3.8.2
2020/02/11 20:38:05 [INFO] ▶ Start clair-scanner
2020/02/11 20:38:14 [INFO] ▶ Server listening on port 9279
2020/02/11 20:38:14 [INFO] ▶ Analyzing 1bb29d248cda54ae7e8f18074e92c79179d15d7d4844a7f5708cba0a154253d3
2020/02/11 20:38:14 [INFO] ▶ Analyzing e74d0609cb575bf841627cee6fd5942f45a5c1ac443dc10165bb529d0368cc09
2020/02/11 20:38:14 [INFO] ▶ Analyzing bed75f80ed22b88e72bb1ea92e25491d0eb99deacaa28f253d39bfc91ccceade
2020/02/11 20:38:14 [INFO] ▶ Analyzing 4507245d680564fea4f7100ef5503116a4fb2b3caed7ef33685ce0ebc97e1d82
2020/02/11 20:38:14 [INFO] ▶ Analyzing ce23db4b31a3c562db35fd370629f19785db5d2a986bcf70ff0328aafbe7b33d
2020/02/11 20:38:14 [INFO] ▶ Analyzing 539f71b987857c18f587a1aef49a0e836e1371b6987a520d2263b8d8223ec408
2020/02/11 20:38:14 [INFO] ▶ Analyzing 78faceb72095e58c17653afbc55fa9231f5bd507373546ebf13d383e1eeda411
2020/02/11 20:38:14 [INFO] ▶ Image [secureimages/kibana-oss:7.6.0-alpine-3.8.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/kibana-oss:7.6.0-alpine-3.8.2
2020-02-11T18:38:16.775Z        INFO    Need to update DB
2020-02-11T18:38:16.775Z        INFO    Downloading DB...
2020-02-11T18:38:20.830Z        INFO    Reopening DB...
2020-02-11T18:38:32.025Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.6.0-alpine-3.8.2 (alpine 3.8.2)
=========================================================
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
2020/02/11 20:38:38 [INFO] ▶ Start clair-scanner
2020/02/11 20:38:52 [INFO] ▶ Server listening on port 9279
2020/02/11 20:38:52 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/11 20:38:52 [INFO] ▶ Analyzing a289fceb0fda4929f3bdfa250a6af9cd9d7f2807b61c4e00519cd1c70655ea24
2020/02/11 20:38:52 [INFO] ▶ Analyzing 9918116cbf7e53e3ba780df52edc41e3c8450c7168fb9ff693afa0dce7a23421
2020/02/11 20:38:52 [INFO] ▶ Analyzing 50bd6638ffe49be1fa9fa933921a1e01e5b02d6ea253c727c9b4eac0e34e4ce2
2020/02/11 20:38:52 [INFO] ▶ Analyzing 6ffdebc48b12ef252d57fd8320abd1683a1bcfcf4467c15bdf8912b7a1cd509b
2020/02/11 20:38:53 [INFO] ▶ Analyzing 2d50fa656185d1e8b2c1e29934733dfd711fd0db494a8e07479ad3251adbb9ec
2020/02/11 20:38:53 [INFO] ▶ Analyzing 4577fa34e255f1c3488d3b9cc7b0d7865e01f09d6e2576a8da4776d907ee0cdb
2020/02/11 20:38:53 [INFO] ▶ Analyzing 5e554580ccafc4a67e6208884da181ca5ad34239ae9f9ca74f3c801175bb365d
2020/02/11 20:38:53 [INFO] ▶ Analyzing cbae7e3e9ce745974a8dbcd2035d57c1ec145ee06c9ce007aa46a2e6eb123e64
2020/02/11 20:38:53 [INFO] ▶ Analyzing 45f6fd00a043549bb78112d613b9ec5f29aef4fd56a91f13cd37e0c50f83078c
2020/02/11 20:38:53 [INFO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/kibana/kibana-oss:7.6.0
2020-02-11T18:38:55.604Z        INFO    Need to update DB
2020-02-11T18:38:55.604Z        INFO    Downloading DB...
2020-02-11T18:38:59.088Z        INFO    Reopening DB...
2020-02-11T18:39:17.646Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.6.0 (centos 7.7.1908)
===========================================================
Total: 623 (UNKNOWN: 0, LOW: 59, MEDIUM: 453, HIGH: 107, CRITICAL: 4)
```
