function [xCapt,yCapt,thetaCapt] = moveCapt (cmd,x,y,theta)

dTheta = pi/6;
xCapt = x;
yCapt = y;
thetaCapt = theta;

if (cmd=="w")
  %move forward
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
