function [xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta,size,height,width)

dTheta = pi/6;
step = 50;

%Shuffle left
if (cmd == "j")
  xTemp = x + step * sin(theta);
  yTemp = y - step * cos(theta);

  if(isOnMap(xTemp,yTemp,height,width,size))
    xCrab=xTemp;
    yCrab=yTemp;
  else
    xCrab = x;
    yCrab = y;
  endif

  thetaCrab = theta;

%Shuffle right
elseif (cmd == "l")
  xTemp = x - step * sin(theta);
  yTemp = y + step * cos(theta);

  if(isOnMap(xTemp,yTemp,height,width,size))
    xCrab=xTemp;
    yCrab=yTemp;
  else
    xCrab = x;
    yCrab = y;
   endif

  thetaCrab = theta;

%Swim back
elseif (cmd == "k")
  xTemp = x - step * cos(theta);
  yTemp = y - step * sin(theta);

  if(isOnMap(xTemp,yTemp,height,width,size))
    xCrab=xTemp;
    yCrab=yTemp;
  else
    xCrab = x;
    yCrab = y;
   endif

  thetaCrab = theta;

%Turn right
elseif(cmd == "i")
  xCrab = x;
  yCrab = y;
  thetaCrab = theta + dTheta;

%Turn left
elseif(cmd == ",")
  xCrab = x;
  yCrab = y;
  thetaCrab = theta - dTheta;

else
  xCrab = x;
  yCrab = y;
  thetaCrab = theta;
endif

endfunction
