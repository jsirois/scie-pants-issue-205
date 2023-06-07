FROM docker.io/python:3.9.16-slim AS build-stage

# Install prerequisites
RUN apt-get update \
    && apt-get install --no-install-recommends -y curl openssl \
    && apt-get autoremove -y \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/*

# Make 'app' folder the current working directory
WORKDIR /app

ENV PATH=$PATH:/root/bin:/root/.local/bin
COPY . ./
RUN ./get-pants.sh \
    && pants --version

