#! /bin/bash

IMPORT_LOGGING_LEVEL=2
source ../import_utils

import mod1
IMPORT_LOGGING_LEVEL=5
import mod2, mod3
import mod4, mod5, mod6

mod1-exec
mod2-exec

mod4-exec
mod5-exec
