# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~394MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.6.2-alpine-3.11.5
2020/04/25 13:15:17 [INFO] ▶ Start clair-scanner
2020/04/25 13:15:25 [INFO] ▶ Server listening on port 9279
2020/04/25 13:15:25 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/25 13:15:25 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/04/25 13:15:25 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/04/25 13:15:25 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/04/25 13:15:25 [INFO] ▶ Analyzing dfa779853adc9afc83bdad2676711e99625a0191b26feee09e3ab6f1f5841fa2
2020/04/25 13:15:26 [INFO] ▶ Analyzing 8a63695b58209446c343687a95c56ce4b2e54854d72795ae443737820f820688
2020/04/25 13:15:26 [INFO] ▶ Analyzing 5264228d29233ba3a0b239874df91d5c876fb06d138c1884eb57dbe0ea0f0bff
2020/04/25 13:15:26 [INFO] ▶ Analyzing 1a358fe76cbc2ade1f3bfec6d61b67aff20662552beb65fde4144ff56053add4
2020/04/25 13:15:26 [INFO] ▶ Image [secureimages/kibana-oss:7.6.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/kibana-oss:7.6.2-alpine-3.11.5
2020-04-25T10:15:30.032Z        INFO    Need to update DB
2020-04-25T10:15:30.032Z        INFO    Downloading DB...
2020-04-25T10:15:43.730Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.6.2-alpine-3.11.5 (alpine 3.11.5)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~647MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.6.2
2020/04/25 13:15:52 [INFO] ▶ Start clair-scanner
2020/04/25 13:16:07 [INFO] ▶ Server listening on port 9279
2020/04/25 13:16:07 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/25 13:16:07 [INFO] ▶ Analyzing bcf9a08cdabbdae6f91b19d85fd3a9762123d949584c2328921eceab945b124d
2020/04/25 13:16:07 [INFO] ▶ Analyzing 55d04ecf8108ebb6d1a299fa09ab345a0ce449a2fab13bb8771bc272df6abaea
2020/04/25 13:16:07 [INFO] ▶ Analyzing 512aae567448f4ca836ac854c3764eaacc0147211eea6406d44a9f0a2a3696ab
2020/04/25 13:16:07 [INFO] ▶ Analyzing 5529aff8b7475cc7725b631972a9bd7d34b7f2ae359dd5710bcdb834d684e603
2020/04/25 13:16:08 [INFO] ▶ Analyzing e4c1cb51db80da32356c4d08d92e98a9196974e1312a892ad2eb09526b299a30
2020/04/25 13:16:08 [INFO] ▶ Analyzing 4ec045592d1e07846226a8bc4346a866b61845409357bed543f0634654c56202
2020/04/25 13:16:08 [INFO] ▶ Analyzing 446c91ed69f7f9acb2ac1822b458d8a476241e79d42b2fab3b68bec516578cbb
2020/04/25 13:16:08 [INFO] ▶ Analyzing dda84e3c68eb17826745fbc0c7560e15611314b68e6497d832b725f521fda051
2020/04/25 13:16:08 [INFO] ▶ Analyzing d1c0b0468ec66e389c609a1abd9f64c26aad77ba649d3af8849913d2ab6ac2b4
2020/04/25 13:16:08 [WARN] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.6.2] contains 11 total vulnerabilities
2020/04/25 13:16:08 [ERRO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.6.2] contains 11 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress docker.elastic.co/kibana/kibana-oss:7.6.2
2020-04-25T10:16:10.521Z        INFO    Need to update DB
2020-04-25T10:16:10.521Z        INFO    Downloading DB...
2020-04-25T10:16:30.274Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.6.2 (centos 7.7.1908)
===========================================================
Total: 635 (UNKNOWN: 0, LOW: 62, MEDIUM: 459, HIGH: 110, CRITICAL: 4)
```
