#!/bin/bash

# Configure this system to run all necessary tests.

if [[ ! -z $HOMEBREW_REPOSITORY ]] ; then
    brew install bazelisk
fi

