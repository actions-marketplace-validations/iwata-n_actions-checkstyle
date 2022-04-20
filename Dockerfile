FROM openjdk:11

RUN curl -o /checkstyle.jar -sSLO https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.1/checkstyle-10.1-all.jar
ADD checkstyle_rule.xml /checkstyle_rule.xml

ENTRYPOINT ["java", "-jar", "/checkstyle.jar", "-f", "xml", "-c", "/checkstyle_rule.xml", "-o", "checkstyle_result.xml", "**/*.java"]
