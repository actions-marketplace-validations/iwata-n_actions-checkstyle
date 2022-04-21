#!/bin/bash

cd $GITHUB_WORKSPACE

echo GITHUB_WORKSPACE=$GITHUB_WORKSPACE
echo INPUT_FILTER=$INPUT_WORKDIR
echo INPUT_RULE=$INPUT_RULE
echo INPUT_RESULT=$INPUT_RESULT
echo "----"

find $INPUT_FILTER | xargs java -jar /checkstyle.jar -f xml -c $INPUT_RULE -o $INPUT_RESULT

echo "----"
cat $INPUT_RESULT
exit 0
