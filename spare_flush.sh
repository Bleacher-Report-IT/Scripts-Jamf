#!/bin/bash
#
####################################################
####################################################
####################################################
###########          Version 1.0          ##########
###########                               ##########31
###########   created by - Thomas Cosby   ##########
###########           2018 02 07          ##########
###########          __        __         ##########
###########         /\ \   *  /\ \        ##########
###########         \:\ \    /::\ \       ##########
###########          \:\ \  /:/\:\ \      ##########
###########        * /::\ \/:/ /\:\ \     ##########
###########         /:/\:\_\/_/  \:\_\    ##########
###########        /:/ /\/_/\ \   \/_/    ##########
###########       /:/ /    \:\ \  *       ##########
###########       \/_/      \:\ \         ##########
###########               *  \:\_\        ##########
###########                   \/_/        ##########
###########                               ##########
###########      Current Version 1.0      ##########
###########                               ##########
####################################################
####################################################
####################################################
#  Version History
#  
#  
####################################################
#  
#  If you want to delete every user Preferences and
#+ Cache, and launch Chrome as if it was its first run
#  This script will remove any/all documents stored on
#+ spare computers
####################################################
#
#
#  Remove contents of Documents, Downloads and Desktop
rm -Rf /Users/bleacherreport/Documents/*.*
rm -Rf /Users/bleacherreport/Desktop/*.*
rm -Rf /Users/bleacherreport/Downloads/*.*

#  Clean up Slack
rm -Rf /Users/bleacherreport/Library/Containers/com.tinyspeck.slackmacgap/Data/Library/Application Support/Slack

#  Clean up Chrome
rm -Rf /Users/bleacherreport/Library/Preferences/com.google.Chrome.plist
rm -Rf /Users/bleacherreport/Library/Caches/Google/
rm -Rf /Users/bleacherreport/Library/Application\ Support/Google/Chrome/
cd /Applications/Google\ Chrome.app/Contents/MacOS/
./Google\ Chrome --force-first-run

exit 0
#  A zero return value from the script upon exit indicates success
#+ to the shell.