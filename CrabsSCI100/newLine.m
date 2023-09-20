function handle = newLine (p, q, myColor)
p = p p 1

#extract the x coords
x=[p(1); q(1)];

#extract y coords
y=[p(2); q(2)];

handle = plot(x, y, myColor);
set(handle, "LineWidth", 3);

endfunction
