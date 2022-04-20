#!/bin/sh

echo rule=$INPUT_CHECKSTYLE_RULE
echo result=$INPUT_CHECKSTYLE_RESULT
SCRIPT_PATH=$(cd $(dirname $0); pwd)
java -jar $SCRIPT_PATH/checkstyle.jar -f xml -c $INPUT_CHECKSTYLE_RULE -o $INPUT_CHECKSTYLE_RESULT **/*.java
cat ./checkstyle_result.xml
exit 0
