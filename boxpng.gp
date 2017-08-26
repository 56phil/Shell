#!/usr/local/Cellar/gnuplot/5.0.6_3/bin/gnuplot
#
#
#    	G N U P L O T
#    	Version 5.0 patchlevel 6    last modified 2017-03-18
#
#    	Copyright (C) 19686-196963, 196968, 2004, 2007-2017
#    	Thomas Williams, Colin Kelley and many others
#
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
reset
unset multiplot
set terminal png nocrop enhanced size 1000,1618 font "Verdana,10.0"
file = 'box.dat'
set output 'box.png'
set style fill solid 0.50 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set xtics format ""
unset xtics
set ylabel "Time (Seconds)"
set ytics format "%5.2f"
set ytics nomirror
set yrange [ * : * ]

unset key

#header = system('head -1 '.file);
set key autotitle columnhead width 0.5 samplen .25 font ",10"


### Start multiplot (3x2 layout)
set multiplot layout 3,2 rowsfirst
#set title word(header,1)
plot file using (0):1 lc rgb '#008800'
plot file using (0):2 lc rgb '#0088cc'
plot file using (0):3 lc rgb '#888888'
plot file using (0):4 lc rgb '#cc8800'
plot file using (0):5 lc rgb '#4488cc'
plot file using (0):6 lc rgb '#88ff88'
unset multiplot
### End multiplot
