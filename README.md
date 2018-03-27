# bash-imports

This is a small bash script that defines a function named `import` that can be used to source other scripts that
your script depends on, similar to importing a module/package in Python. For example:

```bash
#! /bin/bash

import functions

...
```
will look for a file named `functions.sh` in the current directory and source it.

Actually, the `import` function looks for several different files in several different locations to satisfy
the request. First, the current directory is searched. If the module/package is not found, then `import` will
look in the directories contained in the environment variable `SHELLPATH`, if any.

For each directory that is searched, the `import` function will look for a file or directory with the following
names, in order:

1. `<module>.sh`
1. `<module>`
1. `<module>.tar`
1. `<module>.tar.bz2`
1. `<module>.tar.gz`

If a file or directory is found, the `import` function will do the following:

1. If a file is found, it is sourced.
1. If a directory is found:
    1. All `*.sh` files in the top-level of the directory are sourced.
    1. All `*.sh` files in the `lib/` subdirectory, if it exists, are sourced.
1. If a tarball is found:
    1. The tarball is unpacked into a directory.
    1. All `*.sh` files in the top-level of the directory are sourced.
    1. All `*.sh` files in the `lib/` subdirectory, if it exists, are sourced.