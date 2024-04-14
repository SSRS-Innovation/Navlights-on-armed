--[[
 LUA-script for Ardupilot to turn on/off e.g. navlights on a servo channel based on arming state
--]]

local navlight_servo_channel = 8
local navlight_pwm_off = 1000
local navlight_pwm_on = 2000

function navlights()
  if arming:is_armed() then
    SRV_Channels:set_output_pwm_chan((navlight_servo_channel), (navlight_pwm_on))
    gcs:send_text(6, "Nav Lights on")
  else
    SRV_Channels:set_output_pwm_chan((navlight_servo_channel), (navlight_pwm_off))
    gcs:send_text(6, "Nav Lights off")
  end
end

return navlights(), 1000
