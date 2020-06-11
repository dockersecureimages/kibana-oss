# Kibana OSS

Kibana OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~580MB)

Security scanning using Clair
```
clair-scanner secureimages/kibana-oss:7.7.1-alpine-3.11.5
2020/06/11 12:52:44 [INFO] ▶ Start clair-scanner
2020/06/11 12:52:58 [INFO] ▶ Server listening on port 9279
2020/06/11 12:52:58 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/06/11 12:52:58 [INFO] ▶ Analyzing c09d398ffa2fba58858c97579ba9e01ff4f0d05bd676c53668b3be4acf0daee8
2020/06/11 12:52:59 [INFO] ▶ Analyzing 94c6d47d13bac108c53a5ba3a7def95518ea828b32b8f2e6fbc029c9fc4f0366
2020/06/11 12:52:59 [INFO] ▶ Analyzing 5f7a90fdbd5385eb8e62167d905c3ec4c78f29ccf3bb206060d3d7bcf70a4567
2020/06/11 12:52:59 [INFO] ▶ Analyzing 363663525423b593d9d3412f920404fbe320dd0a37dd4eee992c3e43366ac0a4
2020/06/11 12:53:00 [INFO] ▶ Analyzing c11c087cc671e054d26134bd0e6f6501881e1dd1ca79fdfd0ac7960b5f78ea2a
2020/06/11 12:53:00 [INFO] ▶ Analyzing 388cbfbacb89071d5dec25983a5137409764abe7ee57176752654e84cf1d5705
2020/06/11 12:53:00 [INFO] ▶ Analyzing 27d63786303009e9ec2eb56954dd6d9ccd2ff1cf1fc9f955bf6f5829f30c7413
2020/06/11 12:53:00 [INFO] ▶ Image [secureimages/kibana-oss:7.7.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/kibana-oss:7.7.1-alpine-3.11.5
2020-06-11T09:53:02.343Z        INFO    Need to update DB
2020-06-11T09:53:02.344Z        INFO    Downloading DB...
2020-06-11T09:53:25.161Z        INFO    Detecting Alpine vulnerabilities...

secureimages/kibana-oss:7.7.1-alpine-3.11.5 (alpine 3.11.5)
===========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~818MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/kibana/kibana-oss:7.7.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/kibana/kibana-oss:7.7.1
2020/06/11 12:53:30 [INFO] ▶ Start clair-scanner
2020/06/11 12:53:56 [INFO] ▶ Server listening on port 9279
2020/06/11 12:53:56 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/11 12:53:56 [INFO] ▶ Analyzing b1977199067240c402ee9d758f222c83da16aa4a6a6d2ec570cad0cfbc01bbef
2020/06/11 12:53:57 [INFO] ▶ Analyzing c8b33712f142e41cf863370d9b38686fcf76e3273484988f30c0aa8df4649b28
2020/06/11 12:53:57 [INFO] ▶ Analyzing 2f5c5c87dbdd53fd015aea9d91a022d7a6ca68e1611b661d32bc261dc23f9a49
2020/06/11 12:53:57 [INFO] ▶ Analyzing 6dd6db7a738d7f988a57d7768a006b229754f292ea4006c631cea0d0c12ebfa6
2020/06/11 12:53:58 [INFO] ▶ Analyzing 0d04cf84c44a6173e3b8474a21146542215aa7d54ce4e39ca8f915d0317b77a5
2020/06/11 12:53:58 [INFO] ▶ Analyzing 1299e25e05e76032a1e82db444a3b59a38c5e0f8b126fca188353eb0ef589fd5
2020/06/11 12:53:58 [INFO] ▶ Analyzing 8aa2ca6d41c0f0713509822d53c7d19c6bd7860e84c77249e446093e6964aa47
2020/06/11 12:53:58 [INFO] ▶ Analyzing 691b7e893002b9971017ee8be6553305d74721c063761ad8543700bb14f1c4be
2020/06/11 12:53:58 [INFO] ▶ Analyzing 64c9832f0711e1a1de4b473676221524b863fd150d260b91f636c392756af4b9
2020/06/11 12:53:58 [INFO] ▶ Analyzing 932e055bb24b51fab864fd4a5d3648bbebf4b20da67f785199cf8296d001be5c
2020/06/11 12:53:58 [WARN] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.7.1] contains 1 total vulnerabilities
2020/06/11 12:53:58 [ERRO] ▶ Image [docker.elastic.co/kibana/kibana-oss:7.7.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/kibana/kibana-oss:7.7.1
2020-06-11T09:54:00.504Z        INFO    Need to update DB
2020-06-11T09:54:00.504Z        INFO    Downloading DB...
2020-06-11T09:54:30.767Z        INFO    Detecting RHEL/CentOS vulnerabilities...

docker.elastic.co/kibana/kibana-oss:7.7.1 (centos 7.8.2003)
===========================================================
Total: 620 (UNKNOWN: 0, LOW: 369, MEDIUM: 244, HIGH: 7, CRITICAL: 0)
```
