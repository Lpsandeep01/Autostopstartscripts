#!/bin/bash

if pgrep -x "java" > /dev/null
then
    echo "Tomcat is running."
else
    echo "Tomcat is not running. Sending email notification..."
    mail -s "Tomcat Stopped" psandeep5567.com <<< "Tomcat is not running on server."
fi

