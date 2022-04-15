Docker Developer
----------------

Co to multistage build, jakie są zalety używania multistage buildów?

Jakie znasz metody optymalizacji rozmiaru obrazu?

The task
--------

There is a very simple Fortran based code. You can find it here:

https://github.com/mkopsnc/fortran-hello-world

Create a Docker image (using Dockerfile and Docker build system) that will contain compiled code and will allow to run Docker container that will result in running the code - once.

Try to create as minimal image as possible. How can you cut it in a half (hit: you might need some hacks).

You can take this task as a home work.

---

# fortran-hello-world

Very simple Fortran code. It just prints `Hello world!` on stdout. Nothing fancy.

To run the code you need:

- GNU Fortran,
- Make,
- Git.

Running the code is quite simple - clone the repo and run `make`.

```
> git clone https://github.com/mkopsnc/fortran-hello-world
> cd fortran-hello-world/src
> make
> make test
```