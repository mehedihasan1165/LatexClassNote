set table "new.pgf-plot.table"; set format "%.5f"
 f(x,y) = x*y*y+2*(x**3)*(y**3)-y-2; set xrange [-4:4]; set yrange [-4:4]; set view 0,0; set isosample 500,500; set cont base; set cntrparam levels incre 0,0.1,0; unset surface; splot f(x,y); 
