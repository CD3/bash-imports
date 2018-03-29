# bash-imports

This is a small bash script I wrote to help with reusing shell code. It provides a shell function named `import`
for importing "modules", which
is basically a more general version of `source`. In fact, `import` ultimatly just calls `source`, but it
searches for the file (or files) to source. For example:

```bash
#! /bin/bash
source import_utils
import functions

...
```

In this script, the `import` function will look for a file or directory named:

1. `functions`
1. `functions.sh`
1. `functions.tar`
1. `functions.tar.bz2`
1. `functions.tar.gz`

If found, the `import` function will do the following:

1. If a file is found, it is sourced.
1. If a directory is found:
    1. Source all `*.sh` files in the top-level of the directory.
    1. Source all `*.sh` files in the `lib/` subdirectory, if it exists.
    1. Add the `bin/` subdirectory to `PATH`.
1. If a tarball is found:
    1. Unpack the tarball into a directory.
    1. Source all `*.sh` files in the top-level of the directory.
    1. Source all `*.sh` files in the `lib/` subdirectory, if it exists.
    1. Add the `bin/` subdirectory to `PATH`.

The `module` function will search for modules in the current directory first. If the module is not found, it will
start searching in the list of directories contained in the `IMPORT_MODULE_PATH` (set to `${HOME}/.bash/modules` by default) environment variable. The first
file or directory found is used.

This makes it very easy to reuse utility code in your shell scripts. Just wrap the code up into shell functions, save them to a file, and drop it in `${HOME}/.bash/modules`. Then your script can source the `import_utils` script, and
import the file containing your utility code.