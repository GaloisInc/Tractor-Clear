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
# This is a prerequisite image for either of the next images
docker build -f ./compile-c2rust.Dockerfile --tag compile-c2rust .
# This builds the LLVM IR for the c2rust internal tests
docker build -f ./compile-c2rust-tests.Dockerfile --tag compile-c2rust-tests .
# This builds the LLVM IR for the c2rust external test suite
docker build -f ./compile-c2rust-testsuite.Dockerfile --tag compile-c2rust-testsuite .
```

How to extract
--------------

Once the image has successfully built, the bitcode files should have been collected in a root
directory within the image (at the moment, `/c2rust-x86-64-llvmir`).

You can extract them to your host machine by starting a container from the image, then copying the
directory.  Assuming you tagged the container as `compile-c2rust-tests`, you can:

```
docker run -d --name compile-c2rust-tests compile-c2rust-tests
```

to start the container in "daemon" mode, naming the container the same as the image, then:

```
docker cp compile-c2rust-tests:/c2rust-x86-64-llvmir .
```

Finally, you can get rid of this container altogether:

```
docker container rm compile-c2rust-tests
```

Replace all mentions of `compile-c2rust-tests` in this section with `compile-c2rust-testsuite` for
extracting the test suite LLVM IR.
