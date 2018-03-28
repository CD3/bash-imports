#! /bin/bash

set -e

export IMPORT_MODULE_INSTALL_PATH="${PWD}/installed_module/"
source ../import_utils
IMPORT_LOGGING_LEVEL=2

install_module mod1
ls ${IMPORT_MODULE_INSTALL_PATH}/mod1.*
ls ${IMPORT_MODULE_PATH}/mod1.*

rm -rf install_modules.d
mkdir install_modules.d
cd install_modules.d
import mod1

cd ..
rm -r "${PWD}/installed_module/"


install_module mod1/
ls ${IMPORT_MODULE_INSTALL_PATH}/mod1.*
ls ${IMPORT_MODULE_PATH}/mod1.*

cd install_modules.d
import mod1
import mod1

rm -r "${PWD}/installed_module/"
