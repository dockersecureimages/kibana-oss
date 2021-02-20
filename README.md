# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~366MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.10.2-alpine-3.11.7
2021/02/20 12:27:10 [INFO] ▶ Start clair-scanner
2021/02/20 12:27:16 [INFO] ▶ Server listening on port 9279
2021/02/20 12:27:16 [INFO] ▶ Analyzing 0fa0bac9ca996200ca39a079f7cd6c7aad952393229159774eaa90127a2aa745
2021/02/20 12:27:17 [INFO] ▶ Analyzing 531b7f6640636ecad0756f752695f297c9c2f36c6863976d0b46790230f55340
2021/02/20 12:27:17 [INFO] ▶ Analyzing 3741ef4fe22e7f254dd1d9ba83adf6609cbf2abd7c3db53463eaa706b3836d82
2021/02/20 12:27:18 [INFO] ▶ Analyzing 3f4fc67a936976b7ff70585ba30cc056745a6982154dbc6b8fe72fbce128330b
2021/02/20 12:27:18 [INFO] ▶ Analyzing 4126ab529f6a2ecc48eae8f66152cbdc942605f564b662f367ead6ddd6532b87
2021/02/20 12:27:18 [INFO] ▶ Analyzing 09910c390f6b9f41c507f3257c840a34d52c56b2da6a15e4ac45018d213835d1
2021/02/20 12:27:18 [INFO] ▶ Analyzing 49bebf636e20bcb0d4ac67d90f74653e3f4de165cc9a983c4a3894da04359fca
2021/02/20 12:27:18 [INFO] ▶ Analyzing 9d87f10e5c8f420e3e8d592c1d1ced90e4e03c6574cf5ca895b4027583634059
2021/02/20 12:27:18 [INFO] ▶ Image [secureimages/kibana-oss:7.10.2-alpine-3.11.7] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/kibana-oss:7.10.2-alpine-3.11.7
2021-02-20T12:27:19.866Z        INFO    Need to update DB
2021-02-20T12:27:19.866Z        INFO    Downloading DB...
2021-02-20T12:27:28.546Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T12:27:28.547Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/kibana-oss:7.10.2-alpine-3.11.7 (alpine 3.11.7)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~674MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.10.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.10.2
2021/02/20 12:27:32 [INFO] ▶ Start clair-scanner
2021/02/20 12:27:43 [INFO] ▶ Server listening on port 9279
2021/02/20 12:27:43 [INFO] ▶ Analyzing b5ad3981919b474c18caec8885fc124b01bc7c3e7fa19738cbfae253a22d4a16
2021/02/20 12:27:47 [INFO] ▶ Analyzing 0bbabf8413eabcdc5285573c52071123d3c203999fadb48add5f78a5b0737442
2021/02/20 12:27:48 [INFO] ▶ Analyzing 39114b2ade0d67cae59fc2cd1f1ecca5a7cc72b490fed65c35924d02bc862de9
2021/02/20 12:27:48 [INFO] ▶ Analyzing bab840dccba14f1304bcaccc124bd29bed1b389c4181c8c448550f82f9c10106
2021/02/20 12:27:48 [INFO] ▶ Analyzing 34cea87a77117b8dc7efe2161352b1cfe20cf617e2d2c2e7b052ae5b1edd735c
2021/02/20 12:27:48 [INFO] ▶ Analyzing 802254dfb2ca21ff8bea2822fcd69a53bbd1025d543494a48bd3f7b68bc4a0ac
2021/02/20 12:27:48 [INFO] ▶ Analyzing 99035b1c43b7fe2b7b57fefeb5a761308c2c40851211a840ba24e07d4c52e857
2021/02/20 12:27:48 [INFO] ▶ Analyzing ce93d76915f2aa9700b5a940387f7db4132b38a161d062cb7a07f897784603a7
2021/02/20 12:27:48 [INFO] ▶ Analyzing d5f02ed18f7193dd73da68b6157210321a454918fcee1952dfeee38f3fbb90cd
2021/02/20 12:27:48 [INFO] ▶ Analyzing 44f37ad949c2f22a452d62ab85a3400ef62238389a28f3e6dda9145d7dec5a8f
2021/02/20 12:27:48 [INFO] ▶ Analyzing 0816ebec19ccaddb8a4754e40cf51b5d712a54be22a7e5bd59ff67497a3df2fa
2021/02/20 12:27:48 [INFO] ▶ Analyzing 75291ab4c7f55f172cd13dc3dfcf2773a24ba422a04de7956616d311a91defa3
2021/02/20 12:27:48 [INFO] ▶ Analyzing 17df7d2498803ed25582a07faebf4f04e77d87b44f1e136b4ae932a35800a066
2021/02/20 12:27:48 [INFO] ▶ Analyzing 3eace872e8fb72ffb9ae0765b4c965198d0a36e12c13e9c9d444dcd4ec830f5f
2021/02/20 12:27:48 [WARN] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.10.2] contains 5 total vulnerabilities
2021/02/20 12:27:48 [ERRO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.10.2] contains 5 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress docker.elastic.co/kibana/kibana-oss:7.10.2
2021-02-20T12:27:50.360Z        INFO    Need to update DB
2021-02-20T12:27:50.360Z        INFO    Downloading DB...
2021-02-20T12:28:07.316Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2021-02-20T12:28:07.322Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

docker.elastic.co/kibana/kibana-oss:7.10.2 (centos 8.3.2011)
============================================================
Total: 263 (UNKNOWN: 0, LOW: 100, MEDIUM: 155, HIGH: 8, CRITICAL: 0)
```
