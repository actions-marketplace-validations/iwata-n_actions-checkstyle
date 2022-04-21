#!/bin/sh

cd $GITHUB_WORKSPACE

echo workdir=$INPUT_WORKDIR
echo rule=$INPUT_RULE
echo result=$INPUT_RESULT
SCRIPT_PATH=$(cd $(dirname $0); pwd)
java -jar $SCRIPT_PATH/checkstyle.jar -f xml -c $INPUT_RULE -o $INPUT_RESULT $INPUT_WORKDIR 
cat $INPUT_RESULT
exit 0
