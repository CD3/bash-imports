#! /bin/bash

source ../import_utils
IMPORT_LOGGING_LEVEL=2

install_module mod1
ls ${IMPORT_MODULE_PATH}/mod1.*

import mod1

rm ${IMPORT_MODULE_PATH}/mod1.*

