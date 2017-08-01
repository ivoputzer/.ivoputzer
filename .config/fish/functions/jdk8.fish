function jdk8 --description "Switches \$JAVA_HOME to JDK8"
  echo "Switching \$JAVA_HOME to JDK8"
  set _java_home (/usr/libexec/java_home -v 1.8)
  set -x JAVA_HOME $_java_home
  jenv local 1.8
  echo "\$JAVA_HOME = $JAVA_HOME"
  java -version
end
