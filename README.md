# ko
## Build and Deploy Go Application
No need a dockerfile. `ko` use the existing registry creds in `.docker/config.json'

Export the registry and repo as env
```
export KO_DOCKER_REPO=baykara/goapp
```
then simply adding `prod` tag and `--bare` for using repo without additional infos
```
ko publish --tags=prod --bare .

2021/08/23 22:24:15 Using base gcr.io/distroless/static:nonroot for main.go
2021/08/23 22:24:16 Building main.go for linux/amd64
2021/08/23 22:24:16 Publishing baykara/goapp:prod
2021/08/23 22:24:19 pushed blob: sha256:72164b581b02b1eb297b403bcc8fc1bfa245cb52e103a3a525a0835a58ff58e2
2021/08/23 22:24:20 pushed blob: sha256:0d7d70899875b098ace120b574f57b39e91415ceaf9b348d6abe168537509f5a
2021/08/23 22:24:20 pushed blob: sha256:0135a0a055da68e48164e7f5071e00a8f96cc3fcaa8c4fee769205249c4dee04
2021/08/23 22:24:22 pushed blob: sha256:5fa4e1a7845cac126a5e8b093c8031d3621f30fba24ec544e52d11af43abdcd2
2021/08/23 22:24:22 baykara/goapp:prod: digest: sha256:0e14688d59970572ef0c47daf91d113396d4b97634d58c0bba6235ca03515347 size: 749
2021/08/23 22:24:22 Published baykara/goapp:prod@sha256:0e14688d59970572ef0c47daf91d113396d4b97634d58c0bba6235ca03515347
baykara/goapp:prod@sha256:0e14688d59970572ef0c47daf91d113396d4b97634d58c0bba6235ca03515347
```

docker run baykara/goapp:prod
```
Unable to find image 'baykara/goapp:prod' locally
prod: Pulling from baykara/goapp
0d7d70899875: Already exists                                                                                            72164b581b02: Already exists                               0135a0a055da: Pull complete 
Digest: sha256:0e14688d59970572ef0c47daf91d113396d4b97634d58c0bba6235ca03515347
Status: Downloaded newer image for baykara/goapp:prod
The time is 2021-08-23 20:26:52.8333876 +0000 UTC m=+0.000087501
```
