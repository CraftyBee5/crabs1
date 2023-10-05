function crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , sizeCrab)
% In the future, this function will draw the captain at the given
% position (xCapt , yCapt) , with heading thetaCapt.
% For now, it draws the captain at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called captainGrapics.
% The ith vector entry contains the graphics handle of ith line of the captain.
% Use your code from last week to get the captain matrix
% for a captain of dimension sizeCapt. Notice that
% sizeCapt is a parameter passed into drawCapt.
crab = getCrab(sizeCrab);
% TODO : Rotate captain from zero heading to heading thetaCapt
% TODO : Shift the captain from (0 , 0) to (xCapt , yCapt)
% shift Captain to new location
%R = getRotation(thetaCapt);
%captRotated = R*capt;

% This calls the function getTranslation with the values of the x and y
% this function then returns a matrix of new values
T = getTranslation(xCrab,yCrab);

% This multiplies the past values by the newer matrices in order to change the
% coordinate of the captains points
%crab = T*captRotated;

% Extract the captain points from the captain matrix capt.
pt1=crab( : , 1);
pt2=crab( : , 2);
pt3=crab( : , 3);
pt4=crab( : , 4);
pt5=crab( : , 5);
pt6=crab( : , 6);
pt7=crab( : , 7);
pt8=crab( : , 8);
pt9=crab( : , 9);
pt10=crab( : , 10);
pt11=crab( : , 11);
pt12=crab( : , 12);
pt13=crab( : , 13);
pt14=crab( : , 14);

% Draw the captain and set the return vector of graphics handles.
crabGraphics(1) = drawLine(pt1 , pt2 , "k");
crabGraphics(2) = drawLine(pt2 , pt3 , "k");
crabGraphics(3) = drawLine(pt2 , pt5 , "k");
crabGraphics(4) = drawLine(pt4 , pt5 , "k");
crabGraphics(5) = drawLine(pt5 , pt6 , "k");
crabGraphics(6) = drawLine(pt6 , pt1 , "k");
crabGraphics(7) = drawLine(pt7 , pt8 , "k");
crabGraphics(8) = drawLine(pt8 , pt9 , "k");
crabGraphics(9) = drawLine(pt9 , pt10 , "k");
crabGraphics(10) = drawLine(pt1 , pt11 , "k");
crabGraphics(11) = drawLine(pt6 , pt12 , "k");
crabGraphics(12) = drawLine(pt13 , pt14 , "k");
endfunction
