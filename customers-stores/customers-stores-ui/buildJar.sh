#!/usr/bin/env bash
rm -f app.jar
spring jar --exclude='+bower*,node*,Gruntfile.js,*.json' --include='dist/**' app.jar app.groovy
