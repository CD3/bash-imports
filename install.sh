#! /bin/bash

source import_utils
set -e

mkdir -p ${IMPORT_MODULE_PATH}
install_dir=$(basename ${IMPORT_MODULE_PATH})
mkdir -p ${install_dir}
cp import_utils ${install_dir}


bashrc=${HOME}/.bashrc
edit_bashrc=0

if [[ ! -e $bashrc ]]
then
  edit_bashrc=1
fi

if grep "import_utils" $bashrc > /dev/null
then
  echo "import_utils found in $bashrc. will not edit."
else
  echo "import_utils not found in $bashrc. will edit."
  edit_bashrc=1
fi

if [[ $edit_bashrc -eq 1 ]]
then
  echo "source ${install_dir}/import_utils" >> ${bashrc}
fi
