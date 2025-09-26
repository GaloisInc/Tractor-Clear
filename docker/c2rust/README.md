Docker image for compiling the C2Rust test suite to LLVM IR/bitcode
===================================================================

This is a Linux Docker image for obtaining LLVM IR files from the C2Rust test suite, independent
from your host architecture.  This is useful in two ways at the moment:

- the C2Rust test suite was not building on Mac recently,

- this gives all performers access to, hopefully, the same LLVM IR.

How to build
------------

Using your favorite of docker/podman/colima, you should be able to run, e.g.:

```
docker build -f ./compile-c2rust-tests.Dockerfile --tag c2rust-tests .
```

How to extract
--------------

Once the image has successfully built, the bitcode files should have been collected in a root
directory within the image (at the moment, `/c2rust-x86-64-llvmir`).

You can extract them to your host machine by starting a container from the image, then copying the
directory.  Assuming you tagged the container as `c2rust-tests`, you can:

```
docker run -d --name c2rust-tests c2rust-tests
```

to start the container in "daemon" mode, naming the container the same as the image, then:

```
docker cp c2rust-tests:/c2rust-x86-64-llvmir .
```

Finally, you can get rid of this container altogether:

```
docker container rm c2rust-tests
```
