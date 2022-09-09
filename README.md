GO Builder
===

Builds a golang binary for linux using a debian image as base.

Executing the image will create a binary called `main` inside your project directory.

Steps
---

Build the image:

```bash
docker image build --tag go-builder:buster .
```

Then run the container mounting the Golang project directory into the container's `/root/build` directory.

For example, using the current directory:

```bash
docker container run --rm -v "$(pwd)":/root/build go-builder:buster
```

Or using a specific absolute path:

```bash
docker container run --rm -v /path/to/my/project:/root/build go-builder:buster
```