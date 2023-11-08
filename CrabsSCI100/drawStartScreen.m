
function level = drawStartScreen (imgName)

drawMap(imgName);
hold on
level = getLevel();
levelLoc= [300,800];
myMessage = ['Ok, level = ', ' ', num2str(level)];
text(textLoc(1), textLoc(2)
pause(2)


endfunction
