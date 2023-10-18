
function testLoop ()

  cmd = "null"

while(1)
  cmd = kbhit(1)
  if(cmd == "Q")
    break;
  endif

3
  pause(.1)
endwhile

endfunction
