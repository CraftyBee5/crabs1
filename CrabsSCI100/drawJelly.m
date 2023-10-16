
function jellyGraphics = drawJelly (x, y,theta, size)

  jelly=getJelly(size);

  R=getRotation(theta);
  jellyRotated = R*jelly;

  T=getTranslation(x,y);
  jelly = T*jellyRotated;

  Pt1=jelly(:,1);
  Pt2=jelly(:,2);
  Pt3=jelly(:,3);
  Pt4=jelly(:,4);
  Pt5=jelly(:,5);
  Pt6=jelly(:,6);
  Pt7=jelly(:,7);
  Pt8=jelly(:,8);
  Pt9=jelly(:,9);
  Pt10=jelly(:,10);
  Pt11=jelly(:,11);
  Pt12=jelly(:,12);

  jellyGraphics(1)=drawLine(pt1,pt2,'m');
  jellyGraphics(2)=drawLine(pt2,pt3,'m');
  jellyGraphics(3)=drawLine(pt3,pt4,'m');
  jellyGraphics(4)=drawLine(pt4,pt5,'m');
  jellyGraphics(5)=drawLine(pt6,pt7,'m');
  jellyGraphics(6)=drawLine(pt7,pt8,'m');
  jellyGraphics(7)=drawLine(pt8,pt9,'m');
  jellyGraphics(8)=drawLine(pt10,pt11,'m');
  jellyGraphics(9)=drawLine(pt11,pt12,'m');
  jellyGraphics(10)=drawLine(pt12,pt13,'m');
  jellyGraphics(11)=drawLine(pt13,pt5,'m');
  jellyGraphics(12)=drawLine(pt12,pt4,'m');

endfunction
