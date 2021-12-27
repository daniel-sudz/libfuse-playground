FROM ubuntu:21.10

COPY ./docker/install-fuse /src/docker/install-fuse
RUN /src/docker/install-fuse

COPY ./libfuse /src/libfuse
COPY ./libfuse-implementation /src/libfuse-implementation

COPY ./docker/compile-implementation /src/docker/compile-implementation
COPY ./docker/run-implementation /src/docker/run-implementation
RUN /src/docker/compile-implementation
