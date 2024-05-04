#!/bin/bash

# Run all top-level tests in the test directory.  This is intended as the
# primary CI entry point.

set -exuo pipefail

this_dir=$(dirname "$0")
workspace=$(readlink -f "$this_dir")

$workspace/test/setup.sh

for f in $(ls $workspace/test/*_test{s,}.*); do
    $f
done
