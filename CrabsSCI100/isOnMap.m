
function inBounds = isOnMap (x, y, width, height)

if (x> 0 && x < width && y>0 && y<height) {
  inBounds = 1;
else
  inBounds = 0;
endif

endfunction
