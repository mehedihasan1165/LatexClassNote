set table "pr.pgf-plot.table"; set format "%.5f"
 set xrange [-2:0]; set yrange [-4:4]; set view 0,0; set isosample 500,500; set cont base; set cntrparam levels incre 0,0.1,0; unset surface; plot .1*exp(-1/x);; 
