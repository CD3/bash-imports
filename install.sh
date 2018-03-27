#! /bin/bash

source import_utils
set -e

install_dir=$(dirname ${IMPORT_MODULE_PATH})
mkdir -p ${install_dir}
cp import_utils ${install_dir}
mkdir -p ${IMPORT_MODULE_PATH}

echo "'import_utils' was installed to '${install_dir}'"
echo "To use it, add 'source ${install_dir}/import_utils' to your script"
