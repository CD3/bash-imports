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
  $ cd $TESTDIR; ./test_repeated-imports.sh
  INFO: Found /home/cclark/Code/sync/projects/bash-imports/testing/mod1 to import mod1
  mod1-init.sh
  mod1-lib.sh
  INFO: Found /home/cclark/Code/sync/projects/bash-imports/testing/mod1 to import mod1
  mod1-init.sh
  mod1-lib.sh
  $ cd $TESTDIR; ./test_circular-imports.sh
  script
  INFO: Found /home/cclark/Code/sync/projects/bash-imports/testing/test_circular-imports.sh.d/mod1.sh to import mod1
  mod1
  INFO: Found /home/cclark/Code/sync/projects/bash-imports/testing/test_circular-imports.sh.d/mod2.sh to import mod2
  mod2
  INFO: Circular import detected. 'mod1' has already been imported. Skipping.
