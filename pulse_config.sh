#!/bin/bash
​
open /Applications/Pulse\ Secure.app/Contents/Plugins/JamUI/PulseTray.app
​
/Applications/Pulse\ Secure.app/Contents/Plugins/JamUI/jamCommand -importfile /var/tmp/DNGConfigDeploy.jnprpreconfig
​
rm -rf /var/tmp/DNGConfigDeploy.jnprpreconfig
​
exit 0