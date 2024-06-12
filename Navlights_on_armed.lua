-- LUA-script for Ardupilot to turn on or off e.g. nav lights on a servo channel based on arming state
-- On a PixracerPro servo channel 7 is pin # 8 on the servo rail.
-- Successfully tested on a PixracerPro running ArduPlane 4.5.1

local navlight_servo_channel = 7
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
  return navlights, 1000
end
return navlights, 1000
