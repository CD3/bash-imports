  $ cd $TESTDIR; ./test_basic-imports.sh
  mod1-init.sh
  mod1-lib.sh
  mod2-init.sh
  mod2-lib.sh
  mod3.sh
  mod4-init.sh
  mod4-lib.sh
  mod5-init.sh
  mod5-lib.sh
  mod6.sh
  mod1-exec
  mod2-exec
  mod4-exec
  mod5-exec
  $ cd $TESTDIR; ./test_missing-imports.sh
  CRITICAL: No such module found: mod
  [1]
  $ cd $TESTDIR; ./test_logging-imports.sh
  INFO: Found */mod1 to import mod1 glob
  mod1-init.sh
  mod1-lib.sh
  mod2-init.sh
  mod2-lib.sh
  mod3.sh
  mod4-init.sh
  mod4-lib.sh
  mod5-init.sh
  mod5-lib.sh
  mod6.sh
  mod1-exec
  mod2-exec
  mod4-exec
  mod5-exec
