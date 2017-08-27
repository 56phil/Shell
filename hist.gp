unset multiplot
reset
set terminal qt
file = 'hist.dat'
set xtics format "%0.3f" nomirror
set xtics  norangelimit font ",12"
set xlabel "Time"
set ylabel "Count"
set ytics format "%0.2f"
set ytics nomirror
set yrange [ 0 : * ]
#unset key
set style line 2 lt 1
#set style fill solid
n=7.0 #number of intervals
hist(x,width)=width*floor(x/width)+width

set multiplot layout 3,2 rowsfirst

stats file u 1
max=STATS_max
min=STATS_min
width=(max-min)/n
set boxwidth width
set xtics   min-width/2.0,width,max-width/2.0
set xrange [ min-width : max]
plot file u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"#006f6f" notitle

stats file u 2
max=STATS_max
min=STATS_min
width=(max-min)/n
set boxwidth width
set xtics   min-width/2.0,width,max-width/2.0
set xrange [ min-width : max]
plot file u (hist($2,width)):(1.0) smooth freq w boxes lc rgb"#006f6f" notitle

stats file u 3
max=STATS_max
min=STATS_min
width=(max-min)/n
set boxwidth width
set xtics   min-width/2.0,width,max-width/2.0
set xrange [ min-width : max]
plot file u (hist($3,width)):(1.0) smooth freq w boxes lc rgb"#006f6f" notitle

stats file u 4
max=STATS_max
min=STATS_min
width=(max-min)/n
set boxwidth width
set xtics   min-width/2.0,width,max-width/2.0
set xrange [ min-width : max]
plot file u (hist($4,width)):(1.0) smooth freq w boxes lc rgb"#006f6f" notitle

stats file u 5
max=STATS_max
min=STATS_min
width=(max-min)/n
set boxwidth width
set xtics   min-width/2.0,width,max-width/2.0
set xrange [ min-width : max]
plot file u (hist($5,width)):(1.0) smooth freq w boxes lc rgb"#006f6f" notitle

stats file u 6
max=STATS_max
min=STATS_min
width=(max-min)/n
set boxwidth width
set xtics   min-width/2.0,width,max-width/2.0
set xrange [ min-width : max]
plot file u (hist($6,width)):(1.0) smooth freq w boxes lc rgb"#006f6f" notitle

unset multiplot





### End multiplot

