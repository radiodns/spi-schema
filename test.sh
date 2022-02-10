#!/bin/bash
ret=0
for doc in examples/**/*full.xml
do
     xmllint --schema spi_34.xsd --noout $doc
     if [ $? -gt 0 ]; then
         ret=1
     fi
done
exit $ret
