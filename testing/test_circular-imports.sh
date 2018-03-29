#! /bin/bash

topdir=$PWD
sandbox=$PWD/$(basename $0).d
mkdir $sandbox
function clean {
  rm -r $sandbox
}
trap clean EXIT

cd $sandbox

cat << EOF > mod1.sh
echo "mod1"
import mod2
EOF

cat << EOF > mod2.sh
echo "mod2"
import mod1
EOF

cat << EOF > script.sh
source $topdir/../import_utils
IMPORT_LOGGING_LEVEL=2
echo "script"
import mod1
EOF

chmod +x script.sh
./script.sh
