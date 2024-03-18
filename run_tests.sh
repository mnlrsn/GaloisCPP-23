#!/bin/sh

# Script to run test code

rm -rf /var/tmp/test_gfelement_1.out 
./test_gfelement < test_gfelement.in > /var/tmp/test_gfelement_1.out

# Check if the test output is identical to our known good output
diff test_gfelement_no_exp.out /var/tmp/test_gfelement_1.out >> /dev/null
if [ $? != 0 ]; then
    echo "Error in test\n"
    exit 1
fi