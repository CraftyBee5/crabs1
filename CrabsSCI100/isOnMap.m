%{
Does not work as of 1:10 pm on 10/6
function inBounds = isOnMap (x, y, width, height)

if (x> 0 && x < width && y>0 && y<height) {
  inBounds = 1;
else
  inBounds = 0;
endif

endfunction
%}

function inBounds = isOnMap(x,y,height,width,buffer)

%if( x > buffer && x < (width-buffer) && y > buffer && y < (height-buffer))
if(x> 0 && x < width && y>0 && y<height)
inBounds=true;

else
inBounds=false;

endif

endfunction

