function jdk6 --description "Switches \$JAVA_HOME to JDK6"
  echo "Switching \$JAVA_HOME to JDK6"
  set _java_home (/usr/libexec/java_home -v 1.6)
  set -x JAVA_HOME $_java_home
  jenv local 1.6
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end
