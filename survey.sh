#!/bin/bash

source prerequisites.sh

if ! runningOnPSUMachine; then
    echo "** This script can only be run on a PSU CECS Linux Machine"
    exit 1
fi



if ! checkForJava; then
    echo "** Java is not configured correctly in your environment"
    exit 1
fi



java -cp /u/whitlock/jars/grader.jar edu.pdx.cs410J.grader.Survey

echo ""
echo "** Thank you for filling out the survey"
echo "** Don't forget to add me.xml to your git repository"
echo ""
