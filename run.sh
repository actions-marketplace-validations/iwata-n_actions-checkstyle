#!/bin/sh

cd $GITHUB_WORKSPACE

echo workspace=$GITHUB_WORKSPACE
echo workdir=$INPUT_WORKDIR
echo rule=$INPUT_RULE
echo result=$INPUT_RESULT
echo "----"
eval "ls $INPUT_WORKDIR"
echo "----"

CMD="java -jar /checkstyle.jar -f xml -c $INPUT_RULE -o $INPUT_RESULT $INPUT_WORKDIR"
echo $CMD
eval $CMD

echo "----"
cat $INPUT_RESULT
exit 0
