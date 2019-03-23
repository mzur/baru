#!/usr/bin/env bash

cmd="sed -i s/xenial/bionic/g /etc/apt/sources.list && apt update -qq && cd $(pwd) && snapcraft clean && snapcraft"

docker run --rm -v $(pwd):$(pwd) -t snapcore/snapcraft:stable sh -c "$cmd"
