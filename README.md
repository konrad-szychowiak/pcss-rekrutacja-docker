Docker Developer
----------------

> Co to multistage build, jakie są zalety używania multistage buildów?

_Multi-stage build_ to metodyka tworzenia obrazów dockerowych w kilku następujących po sobie etapach,
które mogą korzystać z różnych bazowych obrazów.

Tworzone w taki sposób obrazy mogą być mniejsze i bardziej wydajne –
w jednym etapie można skompilować aplikację a w kolejnym stworzyć obraz,
który zawiera jedynie to co potrzebne do działania aplikacji,
bez bibliotek i narzędzi potrzebnych jedynie do kompilacji.

> Jakie znasz metody optymalizacji rozmiaru obrazu?

1. _Multi-stage builds_
2. Używanie minimalistycznych obrazów jako podstaw (lub obrazów _distroless_)
3. Minimalizowanie ilości warstw (_layers_) w Dockerfile'u
4. Trzymanie danych aplikacji poza obrazem
5. Użycie `.dockerignore`, żeby nie kopiować niepotrzebnych plików

The task
--------

> There is a very simple Fortran based code. You can find it here:
>
> https://github.com/mkopsnc/fortran-hello-world
>
> Create a Docker image (using Dockerfile and Docker build system) that will contain compiled code and will allow to run Docker container that will result in running the code - once.
>
> Try to create as minimal image as possible. How can you cut it in a half (hit: you might need some hacks).
>
> You can take this task as a home work.

The alpine-based image has been minimized to 6.64MB 
using multi-stage builds and static compilation.

Before, the size would be around 171MB,
so I was able to create an image over 25 times smaller.

```
❯ docker image ls
REPOSITORY                 TAG        ...   SIZE
pcss-docker-task           latest     ...   6.64MB
pcss-docker-task-worst     latest     ...   167MB
```

`Dockerfile` includes the instructions used to generate the `pcss-docker-task` image.
`Dockerfile-worst` includes the instructions for `pcss-docker-task-worst`.