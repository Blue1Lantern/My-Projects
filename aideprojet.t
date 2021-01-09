% My Variables
var xpositiona, y1, y2, dummy : int
xpositiona := 400
y1 := Rand.Int (200, 400)
y2 := Rand.Int (200, 400)
var x : int := 0

var icolor, icolor2, iXposition, iYposition, xdirection, ydirection, font, font1, font2, font3, xmouse, ymouse, button : int
% Helicopter Controls
var yaltitude, mx, my, btn : int

var ch : string (1)

% Text Fonts
font := Font.New ("serif:50")
font1 := Font.New ("serif:25")
font2 := Font.New ("serif:15")
font3 := Font.New ("serif:9")

% Colors
icolor2 := 21
icolor := 1


% Positions
iXposition := 0
iYposition := 0
xdirection := 1
ydirection := 1
yaltitude := 0
View.Set ("graphics,offscreenonly,nocursor")


loop
yaltitude := 0
% Menu
loop
Mouse.Where (xmouse, ymouse, button)

Draw.Cls
% Background
drawfillbox (300, 240, 350, 260, 41)


% Background
drawfillbox (0, 0, maxx, maxy, 100)


% Cloud 1
drawfilloval (90, 350, 130, 80, white)
drawfilloval (70, 280, 80, 40, white)
drawfilloval (200, 310, 60, 50, white)
drawfilloval (230, 380, 60, 50, white)

% Cloud 2
drawfilloval (400, 150, 130, 80, white)
drawfilloval (380, 80, 80, 40, white)
drawfilloval (410, 220, 80, 40, white)
drawfilloval (520, 110, 70, 50, white)
drawfilloval (520, 190, 80, 50, white)
drawfilloval (300, 180, 60, 50, white)
drawfilloval (300, 120, 40, 30, white)


% Helicopter
drawfillbox (iXposition + 85, iYposition + 5, iXposition + 155, iYposition + 10, black) % Base Connected to Legs
drawfillbox (iXposition + 100, iYposition + 10, iXposition + 105, iYposition + 20, black) % Base leg 1
drawfillbox (iXposition + 135, iYposition + 10, iXposition + 140, iYposition + 20, black) % Base leg 2
drawfillbox (iXposition + 118, iYposition + 80, iXposition + 123, iYposition + 65, black) % Main Rotor
drawfillbox (iXposition + 25, iYposition + 40, iXposition + 130, iYposition + 50, black) % Rotor rectangle
drawfilloval (iXposition + 120, iYposition + 85, 70, 5, icolor2) % Rotor Blades
drawfilloval (iXposition + 120, iYposition + 45, 40, 30, black) % Cockpit
drawfillbox (iXposition + 10, iYposition + 40, iXposition + 15, iYposition + 70, black) % Rotor rectangle
drawfilloval (iXposition + 15, iYposition + 48, 15, 15, icolor2) % Rear Rotor
drawfilloval (iXposition + 85, iYposition + 45, 20, 15, black) % Smaller circle from main body of helicopter



% Menu Selections
Draw.Text ("Super-Heli", 190, 325, font, icolor - 1)
Draw.Text ("Play", 300, 180, font1, icolor - 1)
Draw.Text ("Controls", 275, 120, font1, icolor - 1)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% If Played %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if xmouse > 290 and xmouse < 370 and ymouse > 170 and ymouse < 220 and button = 1 then
Draw.Cls
View.Update

%%% Background %%%
loop 

drawfillbox (0, 0, maxx, maxy, 100)
drawfillbox (0, 0, 640, 50, white)
drawfillbox (0, 350, maxx, maxy, white)
drawfillbox (xpositiona, y1, xpositiona + 40, y2, white)
xpositiona := xpositiona - 1

if xpositiona < 0 then
xpositiona := 640
dummy := Rand.Int (50, 350)
if dummy <= 200 then
y1 := 50
y2 := dummy
else
y1 := 350
y2 := dummy
end if
end if

%Helicopter
drawfillbox (75, 192 + yaltitude, 125, 196 + yaltitude, black) % Base Connected to Legs
drawfillbox (90, 192 + yaltitude, 95, 200 + yaltitude, black) % Base leg 1
drawfillbox (107, 192 + yaltitude, 112, 210 + yaltitude, black) % Base leg 2
drawfillbox (97, 240 + yaltitude, 102, 249 + yaltitude, black) % Main Rotor Rectangle
drawfillbox (25, 218 + yaltitude, 110, 223 + yaltitude, black) % Rotor rectangle
drawfilloval (100, 248 + yaltitude, 50, 5, icolor2) % Rotor Blades
drawfilloval (100, 220 + yaltitude, 30, 20, black) % Cockpit
drawfillbox (24, 215 + yaltitude, 27, 238 + yaltitude, black) % Rotor rectangle
drawfilloval (24, 223 + yaltitude, 10, 10, icolor2) % Rear Rotor Blades
drawfilloval (75, 220 + yaltitude, 15, 10, black) % Smaller circle from main body of helicopter
View.Update

icolor2 := icolor2 + 1

mousewhere (mx, my, btn)
if btn = 1 then
yaltitude += 1
else
yaltitude -= 1
end if
if icolor2 = 31 then
icolor2 := 21
end if

if whatdotcolor (125, 192 + yaltitude) = white then
exit
end if

if whatdotcolor (12, 192 + yaltitude) = white then
exit
end if

if whatdotcolor (150, 253 + yaltitude) = white then
exit
end if

delay (3)
end loop
end if

if whatdotcolor (125, 192 + yaltitude) = white then
exit
end if

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% If Controls selected %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if xmouse > 270 and xmouse < 390 and ymouse > 100 and ymouse < 150 and button = 1 then
Draw.Cls
View.Update

loop
drawfillbox (0, 0, maxx, maxy, 100)

% Cloud 1
drawfilloval (90, 350, 130, 80, white)
drawfilloval (70, 280, 80, 40, white)
drawfilloval (200, 310, 60, 50, white)
drawfilloval (230, 380, 60, 50, white)

% Cloud 2
drawfilloval (400, 150, 130, 80, white)
drawfilloval (380, 80, 80, 40, white)
drawfilloval (410, 220, 80, 40, white)
drawfilloval (520, 110, 70, 50, white)
drawfilloval (520, 190, 80, 50, white)
drawfilloval (300, 180, 60, 50, white)
drawfilloval (300, 120, 40, 30, white)
Draw.Text ("Controls", 265, 335, font1, black)
Draw.Text ("Press B to go Back", 15, 360, font2, black)
Draw.Text ("Welcome to Super-Heli, the classic game that never gets boring!", 70, 285, font2, black)
Draw.Text ("The controls of this game are basic, to raise your helicopter,", 80, 255, font2, black)
Draw.Text ("simply click your mouse to ascend your helicopter vertically,", 77, 225, font2, black)
Draw.Text ("to descend your helicopter, let go of the mouse button.", 100, 195, font2, black)
Draw.Text ("But be careful don't touch the white sections or it's game over!", 70, 165, font2, black)
Draw.Text ("Good luck and have fun!", 230, 125, font2, black)
Draw.Text ("Trademark to the IGC (International Gaming Corporation) Do not copy this game.", 115, 15, font3, black)

View.Update
getch (ch)
if ch = "b" then
exit
else
end if

end loop


else
end if


%drawfillbox (290,170,370,220,41)
%drawfillbox (270,100,390,150,41)




icolor := icolor + 1
if icolor = 62 then
icolor := 1
end if
icolor2 := icolor2 + 1
if icolor2 = 31 then
icolor2 := 21
end if
iXposition := iXposition + xdirection
iYposition := iYposition + ydirection

if iXposition > 455 or iXposition < 0 then
xdirection := -xdirection
end if

if iYposition > 215 or iYposition < 0 then
ydirection := -ydirection
end if


delay (5)
View.Update

end loop

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GAME OVER SCREEN %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cls
drawfillbox (0, 0, maxx, maxy, 100)

% Cloud 1
drawfilloval (90, 350, 130, 80, white)
drawfilloval (70, 280, 80, 40, white)
drawfilloval (200, 310, 60, 50, white)
drawfilloval (230, 380, 60, 50, white)

% Cloud 2
drawfilloval (400, 150, 130, 80, white)
drawfilloval (380, 80, 80, 40, white)
drawfilloval (410, 220, 80, 40, white)
drawfilloval (520, 110, 70, 50, white)
drawfilloval (520, 190, 80, 50, white)
drawfilloval (300, 180, 60, 50, white)
drawfilloval (300, 120, 40, 30, white)
Draw.Text ("Game Over", 190, 200, font, black)
View.Update
delay (2000)
end loop
