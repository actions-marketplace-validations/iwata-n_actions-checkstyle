SCRIPT_PATH=$(cd $(dirname $0); pwd)
java -jar $SCRIPT_PATH/checkstyle.jar -f xml -c $SCRIPT_PATH/checkstyle_rule.xml -o ./checkstyle_result.xml **/*.java
cat ./checkstyle_result.xml
exit 0
