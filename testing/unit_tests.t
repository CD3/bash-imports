  $ cd $TESTDIR; ./test_basic-imports.sh
  mod1-init.sh
  mod1-lib.sh
  mod2-init.sh
  mod2-lib.sh
  mod3.sh
  CRITICAL: No such module found: mod4
  [1]
  $ cd $TESTDIR; ./test_missing-imports.sh
  CRITICAL: No such module found: mod
  [1]
  $ cd $TESTDIR; ./test_logging-imports.sh
  INFO: Found */mod1 to import mod1 (glob)
  mod1-init.sh
  mod1-lib.sh
  mod2-init.sh
  mod2-lib.sh
  mod3.sh
  CRITICAL: No such module found: mod4
  [1]
  $ cd $TESTDIR; ./test_install-module.sh
  INFO: packaging mod1 into a tarball.
  INFO: moving mod1 tarball to module path *. (glob)
  */mod1.tar.bz2 (glob)
  INFO: Found */mod1 to import mod1 (glob)
  mod1-init.sh
  mod1-lib.sh
