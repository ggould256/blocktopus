#!/bin/bash

set -exuo pipefail

this_dir=$(dirname "$0")
workspace=$(readlink -f "$this_dir/..")

bazel build //...
bazel test //...
