# Navlights-on-armed
LUA-script for Ardupilot to turn on/off navlights on a selected servo channel based on arming state

Work in progress and learning project

This script is being developped for the SSRS EOS Drone.
The Navlights beeing used are Flytron STROBON v2 Navigation Light: https://store.flytron.com/collections/led-light-systems/products/strobon-v2-navigation-light

Ardupilot docs for LUA-scripting: https://ardupilot.org/plane/docs/common-lua-scripts.html
Excerpt:

  Set SCR_ENABLE to 1 to enable scripting (refresh or reboot to see all SCR_ parameters).
  Upload scripts (files with extension .lua) to the autopilot’s SD card’s APM/scripts folder.

  If this folder does not exist, you can create it by setting SCR_ENABLE to 1 and rebooting. This folder can also be created manually on the SD card.
