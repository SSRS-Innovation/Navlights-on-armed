-- LUA-script for Ardupilot to turn on or off nav lights on a servo channel based on arming state

local navlight_servo_channel = 7 -- Channel 7 is pin # 8 on the servo rail
local navlight_pwm_off = 900
local navlight_pwm_on = 2000
local previous_arming_state = 0

SRV_Channels:set_output_pwm_chan((navlight_servo_channel), (navlight_pwm_off))
gcs:send_text(6, "Turning Nav Lights off")


function navlights()
  if arming:is_armed() then
      if (previous_arming_state == 0) then
        SRV_Channels:set_output_pwm_chan((navlight_servo_channel), (navlight_pwm_on))
        gcs:send_text(6, "Turning Nav Lights on")
        previous_arming_state = 1
      end
  else
      if (previous_arming_state == 1) then
        SRV_Channels:set_output_pwm_chan((navlight_servo_channel), (navlight_pwm_off))
        gcs:send_text(6, "Turning Nav Lights off")
        previous_arming_state = 0
      end
  end
  return navlights, 1000  -- run at 1Hz
end

return navlights()