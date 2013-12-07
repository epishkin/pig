#!/bin/bash

if [ ! -f avro-tools-1.7.4.jar ];
then
    echo "Put avro-tools-1.7.4.jar in this directory before running again"
    echo "One easy way to get this file is to run something like:"
    echo "wget http://apache.mirror.1000mbps.com/avro/avro-1.7.4/java/avro-tools-1.7.4.jar"
    exit -1;
fi

java -jar avro-tools-1.7.4.jar compile -string schema ./testschema.avsc ../../../../../../../../
