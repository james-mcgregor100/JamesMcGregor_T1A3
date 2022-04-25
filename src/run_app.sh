#!/bin/bash 

#install the gem bundler
gem install bundler 

#this installs all of the specific gems used in the application
bundle install 

#this will clear the terminal to make sure the application begins with a clear interface
clear

#this will run the application
ruby main.rb