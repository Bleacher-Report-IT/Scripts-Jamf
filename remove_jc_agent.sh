#!/bin/bash
#
####################################################
####################################################
####################################################
###########          Version 1.0          ##########
###########                               ##########31
###########   created by - Thomas Cosby   ##########
###########           2018 02 23          ##########
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
#  this script removes JumpCloud Agent
#
####################################################
#
#  variables
#
####################################################

if [[ $(id -u) -ne 0 ]]; then
    echo "Must run as root!"
    exit 1
fi

launchctl remove com.jumpcloud.darwin-agent
rm /Library/LaunchDaemons/com.jumpcloud.darwin-agent.plist

sw_vers -productVersion | cut -d'.' -f1-2  | grep '^10.9$' &> /dev/null
if [[ $? -ne 0 ]]; then
    security authorizationdb read system.login.console | \
        sed 's#<string>jumpcloud-loginwindow:invoke</string>#<string>loginwindow:login</string>#' | \
        security authorizationdb write system.login.console
fi

rm -rf /Library/Security/SecurityAgentPlugins/jumpcloud-loginwindow.bundle
rm -rf /opt/jc

exit 0
#  A zero return value from the script upon exit indicates success
#+ to the shell.