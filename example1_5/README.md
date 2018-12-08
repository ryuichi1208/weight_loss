How to use.

```
$ docker-compose up -d

$ docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS                  PORTS                                                           NAMES
375e6ed11be8        openldap_web              "/entrypoint.sh"         44 minutes ago      Up 44 minutes           0.0.0.0:389->389/tcp                                            openldap
```

Into container.

``` 
$ docker exec -it openldap bash
```
