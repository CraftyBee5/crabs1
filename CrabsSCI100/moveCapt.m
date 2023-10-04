function [xCapt,yCapt,thetaCapt] = moveCapt (cmd,x,y,theta,width,height,size)

dTheta = pi/6;
xCapt = x;
yCapt = y;
thetaCapt = theta;

dStep = 50;

if (cmd=="w")
  %move forward
  xTemp = x + dStep*cos(theta);
  yTemp = y + dStep*sin(theta);

  if(isOnMap(xTemp,yTemp,width,height,size))
    xCapt=xTemp;
    yCapt=yTemp;
   else
    xCapt = x;
    yCapt = y;
  endif


  thetaCapt = theta;
  return
endif

if (cmd=="a")
  %rotate left
  thetaCapt = theta-dTheta;

endif

if (cmd=="d")
  %rotate right
  thetaCapt = theta+dTheta;
endif


endfunction
