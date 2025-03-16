Commands to interact with docker container,

```
docker build . -t projects
docker run --name projects -itd -p 8080:8080 -v ~/.ssh:/root/.ssh -v .:/root/projects projects
docker exec -it -w /root/projects projects bash
```
