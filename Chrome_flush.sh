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
#

rm ~/Library/Preferences/com.google.Chrome.plist
rm -rf ~/Library/Caches/Google/
rm -rf ~/Library/Application\ Support/Google/Chrome/
Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --force-first-run

exit 0
#  A zero return value from the script upon exit indicates success
#+ to the shell.