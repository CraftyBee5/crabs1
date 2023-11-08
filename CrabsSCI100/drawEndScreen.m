
function restart = drawEndScreen (imgName,crrabsCaught,numCrabs)
  drawMap(imgName);
  hold on

    textloc[300,800];
    texthandle=text(textLoc(1), textLoc(2), strcat('Good Job! You caught '), num2str(crabsCaught), 'out of', num2str(numCrabs), 'FontSize', 30, 'Color', 'red')
    pause(5)

    delete(textHandle)
    textHandle=text(textLoc(1), textLoc(2), strcat('Play again? y/n'), 'FontSize', 30, 'Color', 'red');

    while(1)
      commandwindow();
      cmd = kbhit(1);

      if(cmd == 'y' || cmd == 'Y')
        restart = 1;
        breakl
      elseif (cmd == 'n' || cmd == 'N')
        restart = 0;
        break;
      endif
      pause(0.1)

  endwhile

  hold off

endfunction
