#!/bin/sh

cd $GITHUB_WORKSPACE

echo workspace=$GITHUB_WORKSPACE
echo workdir=$INPUT_WORKDIR
echo rule=$INPUT_RULE
echo result=$INPUT_RESULT
echo "----"

java -jar /checkstyle.jar -f xml -c $INPUT_RULE -o $INPUT_RESULT **/*.java

echo "----"
cat $INPUT_RESULT
exit 0
