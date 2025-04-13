Commands to interact with docker container,

```
docker build . -t dev_container
docker run --name dev_container -itd -p 8000:8000 -p 8080:8080 -v ~/.ssh:/root/.ssh -v .:/root/projects dev_container
docker exec -it --detach-keys="ctrl-^" -w /root/projects dev_container bash
```
