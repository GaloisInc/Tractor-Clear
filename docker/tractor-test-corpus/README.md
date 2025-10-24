Docker image for compiling the TRACTOR test corpus to LLVM IR
=============================================================

This is a Linux Docker image for obtaining LLVM IR files from the TRACTOR test corpus, independent
from your host architecture.

How to build
------------

Using your favorite of docker/podman/colima, you should be able to run, e.g.:

```
docker build -f ./compile-tractor-test-corpus.Dockerfile --tag compile-tractor-test-corpus .
```

How to extract
--------------

Once the image has successfully built, the LLVM IR files should have been collected in a root
directory within the image (at the moment, `/tractor-test-corpus-x86-64-llvmir`).

You can extract them to your host machine by starting a container from the image, then copying the
directory.  Assuming you tagged the container as `compile-tractor-test-corpus`, you can:

```
docker run -d --name compile-tractor-test-corpus compile-tractor-test-corpus
```

to start the container in "daemon" mode, naming the container the same as the image, then:

```
docker cp compile-tractor-test-corpus:/tractor-test-corpus-x86-64-llvmir .
```

Finally, you can get rid of this container altogether:

```
docker container rm compile-tractor-test-corpus
```

Replace all mentions of `compile-tractor-test-corpus` in this section with `compile-tractor-test-corpusuite` for
extracting the test suite LLVM IR.
