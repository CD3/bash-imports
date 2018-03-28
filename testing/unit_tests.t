  $ cd $TESTDIR; ./test_basic-imports.sh
  mod1-init.sh
  mod1-lib.sh
  mod2-init.sh
  mod2-lib.sh
  mod3.sh
  mod1-exec
  mod2-exec
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
  [1]
  $ cd $TESTDIR; ./test_install-module.sh
  INFO: packaging mod1 into a tarball.
  INFO: moving mod1 tarball to module path *. (glob)
  */mod1.tar.bz2 (glob)
  */testing/installed_module//mod1.tar.bz2 (glob)
  INFO: Found */testing/installed_module/mod1.tar.bz2 to import mod1 (glob)
  mod1-init.sh
  mod1-lib.sh
  INFO: packaging mod1 into a tarball.
  INFO: moving mod1 tarball to module path */testing/installed_module/. (glob)
  */testing/installed_module//mod1.tar.bz2 (glob)
  */testing/installed_module//mod1.tar.bz2 (glob)
  INFO: Found */testing/installed_module/mod1.tar.bz2 to import mod1 (glob)
  mod1-init.sh
  mod1-lib.sh
  INFO: Found */testing/installed_module/mod1.tar.bz2 to import mod1 (glob)
  mod1-init.sh
  mod1-lib.sh
  rm: cannot remove '*/testing/install_modules.d/installed_module/': No such file or directory (glob)
  [1]
