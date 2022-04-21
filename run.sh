#!/bin/sh
SCRIPT_PATH=$(cd $(dirname $0); pwd)

cd $GITHUB_WORKSPACE

echo workspace=$GITHUB_WORKSPACE
echo workdir=$INPUT_WORKDIR
echo script_path=$SCRIPT_PATH
echo rule=$INPUT_RULE
echo result=$INPUT_RESULT
echo ""

java -jar $SCRIPT_PATH/checkstyle.jar -f xml -c $INPUT_RULE -o $INPUT_RESULT $INPUT_WORKDIR 
cat $INPUT_RESULT
exit 0
