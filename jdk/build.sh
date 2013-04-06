#!/bin/sh

JDK=$(ls | grep jdk-*-linux-*.tar.gz)

if [ $JDK ]
then
    tar xzvf $JDK
    cd jdk1.*
    echo "export JAVA_HOME=`pwd`"           >> ../../setup.sh
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ../../setup.sh 
else
    echo "Download the desired JDK, put the compressed tar into to" `pwd` "and rerun..."
    xdg-open http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html &
fi

