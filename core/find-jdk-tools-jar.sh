if [ "x$ANDROID_JAVA_HOME" != x ] && [ -e "$ANDROID_JAVA_HOME/lib/tools.jar" ] ; then
    echo $ANDROID_JAVA_HOME/lib/tools.jar
else
    JAVAC=$(which javac)
    if [ -z "$JAVAC" ] ; then
	echo "Please-install-JDK-6.0,-which-you-can-download-from-java.sun.com"
	exit 1
    fi
    JAVAC=$(realpath $JAVAC)
    echo $JAVAC | sed -e "s:\(.*\)/bin/javac.*:\\1/lib/tools.jar:"
fi
