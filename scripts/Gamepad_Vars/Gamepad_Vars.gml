gamepads = [];
activeGamepad = undefined;
controllerConnected = undefined;
comtrollerType = undefined;
controllerDeadzone = 0;

/* Thrustmaster Hotas One Flight Stick Controller Mapping

Throttle         = gp_axisrh
Joystick         = gp_axislh or gp_axislv
Trigger (F1) (1) = gp_face1
F2           (2) = gp_face2
B1           (3) = gp_face3
B2           (4) = gp_face4
X            (5) = gp_shoulderl
A            (6) = gp_shoulderr
B            (7) = gp_shoulderlb
Y            (8) = gp_shoulderrb
B3           (9) = gp_select
B4          (10) = gp_start
Two Squares (11) = gp_stickl
Three Lines (12) = gp_stickr
PREV        (13) = gp_padu
NEXT        (14) = gp_padd
Share       (15) = gp_padl

 * /