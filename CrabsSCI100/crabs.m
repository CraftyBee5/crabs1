function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.


% Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size

% For TRANSLATING:
% Changing the x and y by different values will move him, increase y to make him
% move down, increase x to move right, etc...
xCapt = 1000;
yCapt = 900;
thetaCapt = -pi/2;
sizeCapt = 50;

xCrab = 1000;
yCrab = 900;
thetaCrab = -pi/2;
sizeCrab = 50;

% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.
captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);
crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , sizeCrab);

%commands for input and movement
cmd="null";

while(cmd != "Q")

%read keyboard
cmd = kbhit();

  if(cmd=="w" || cmd=="a" || cmd=="d")

    %erase old captain
    for (i=1:length(captainGraphics))
      set(captainGraphics(i),'Visible','off');
    endfor

    %moves captain
    [xCapt,yCapt,thetaCapt]=moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight);

    %draw new captain
    captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);
  elseif(cmd == "i" || cmd=="j" || cmd=="l" || cmd=="," || cmd=="k")

    for i=1:length(crabGraphics)
      set(crabGraphics(i),'Visible','off');
    endfor

    %move crab
    [xCrab,yCrab,thetaCrab]=moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab,mapHeight,mapWidth);

    %draw new crab
    crabGraphics=drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);

  endif;

endwhile

close all
clear
%*******************************************************
endfunction
