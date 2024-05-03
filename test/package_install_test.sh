#!/bin/bash

set -exuo pipefail

this_dir=$(dirname "$0")
workspace=$(readlink -f "$this_dir/..")
test_dir=`mktemp -d -t blocktopus_package_install_test.XXXX`
cd $test_dir

venv_dir="package_install_test_venv"
python3 -m venv package_install_test_venv
pip=$venv_dir/bin/pip
python=$venv_dir/bin/python

# TODO(ggould) This requires the network; fix it with local vendoring?
$pip install hatchling

$pip install "file://$workspace"
$python -c 'from blocktopus_prototype import SENTINEL'
