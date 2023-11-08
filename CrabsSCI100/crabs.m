restart = 1;
while(restart)

function crabs (level)
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
  healthCapt = 100;

  numCrabs = level;
  numJelly = level;

  %create a new crab. initialize new crab location, heading and size
  %initialize crab location, heading and size
    crabsCaught = 0;
    for i=1:numCrabs
      xCrab(i) = rand*mapWidth;
      yCrab(i) = 3*mapHeight/4 + rand*(mapHeight/4);
      thetaCrab(i) = (-pi/2);
      sizeCrab(i) = 50;
      crabGraphics{i} = drawCrab(xCrab(i),yCrab(i),thetaCrab(i),sizeCrab(i));
      isCrabCaught(i)=false;
    endfor

    %initialize jelly fish
    for j=1:numJelly
      xJelly(j)=randi(mapWidth- 100) + 100;
      yJelly(j)=100;
      thetaJelly(j) = -pi/2;
      sizeJelly(j) = 25;
      jellySting = 5;
      jellyGraphics{j} = drawJelly(xJelly(j),yJelly(j),thetaJelly(j),sizeJelly(j));
    endfor

  % Draw the captain and initialize graphics handles
  %*********************************************************
  % Put your call to drawCapt() here ..... You must give drawCapt its
  % input and output arguments.
  [captainGraphics, xNet, yNet] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

  %commands for input and movement
  %cmd="null";

  % print health status
  healthLoc = [100,100];
  crabsCaughtLoc = [100,175];
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
      num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
  crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), ...
      strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


  while (1)

    delete(healthStatus);
    delete(crabsCaughtStatus);

    % print health status
    healthLoc = [100,100];
    crabsCaughtLoc = [100,175];
    healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
        num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
    crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), ...
        strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');

    for j=1:numJelly
      if (isgraphics(jellyGraphics{j}))
        delete(jellyGraphics{j});
      endif

        %move jelly
        [xJelly(j), yJelly(j), thetaJelly(j)] = moveJelly (level, xJelly(j), yJelly(j), thetaJelly(j), sizeJelly(j), mapHeight, mapWidth);

        %redraw jelly
        jellyGraphics{j} = drawJelly(xJelly(j), yJelly(j), thetaJelly(j), sizeJelly(j));

        %make jelly things now
        if ( getDist(xJelly(j),yJelly(j),xCapt,yCapt) < 3*sizeCapt )
          healthCapt = healthCapt - jellySting;
        endif
    endfor

         %keyboard hit
         cmd = kbhit(1);
         if (cmd == "Q" || healthCapt < 0 || crabsCaught == numCrabs)
           restart = 0;
           break;
         endif


        %make captain things
        if(cmd=="w" || cmd=="a" || cmd=="d")

        %erase old captain
        %if isgraphics(captainGraphics)
        for (i=1:length(captainGraphics))
          delete(captainGraphics(i));
        end

        %moves captain
        [xCapt,yCapt,thetaCapt]=moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight);

        %draw new captain
        [captainGraphics,xNet,yNet] = drawCapt(xCapt,yCapt,thetaCapt,sizeCapt);
      endif


      for k=1:numCrabs
        %make crab things
        if( getDist(xNet,yNet,xCrab(k),yCrab(k)) < 2*sizeCapt ) %crab is caught
          %keep track of how many crabs are caught
          crabsCaught = crabsCaught +1;

            if((isCrabCaught(k) == false) && getDist(xNet,yNet,xCrab(k),yCrab(k)) < 2*sizeCapt ) %crab is caught
              crabsCaught = crabsCaught + 1;
              isCrabCaught(k) = true;
            %erase old crab
               delete(crabGraphics{k});
            endif
           endif
          endfor

      %endif

        pause(0.1);
      %endfor
      endwhile

  restart = drawEndScreen("endScreen.pg",crabsCaught,numCrabs);

endwhile

%while(cmd != "Q")

%read keyboard
%cmd = kbhit();



%endwhile

close all
clear
%*******************************************************
endfunction
