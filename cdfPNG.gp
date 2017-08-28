unset multiplot
reset
set terminal png size 850,1100 font ",8"
file = 'hist.dat'
set output 'hist.png'


set xlabel "Time (Seconds)"
set xtics format "%0.1f" nomirror
set ylabel "Density"
set ytics format "%0.0f" 0,15,165
set style line 2 lt 1
set style fill solid
n=8.0
set bar 1.000000 front
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set xzeroaxis
set yzeroaxis
set zzeroaxis

unset for [i = 1:7] paxis i tics
set for [i = 1:7] paxis i range [ * : * ] noreverse nowriteback

hist(x,width)=width*floor(x/width)+width/2


set multiplot layout 3,2 rowsfirst
set xrange [ * : * ]
set yrange [ * : * ]
stats file u 1
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
print min, width, max
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ -15 : 165 ]
set zeroaxis
set style data points
set boxwidth width*0.95
set key top left
set title "N = 247959"
plot file u 1:(10.0*rand(0)-11.0) lc rgb"blue" pt 8 t '', \
     "" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"red" lw 2. t "Frequency",\
     "" u 1:(1.0) smooth cumulative lc rgb"black" t "Cumulative"


set xrange [ * : * ]
set yrange [ * : * ]
stats file u 2
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ -15 : 165 ]
set zeroaxis
set style data points
set boxwidth width*0.95
print min, width, max
set key top left
set title "N = 556034"
plot file u 2:(10.0*rand(0)-11.0) lc rgb"blue" pt 8  t '', \
     "" u (hist($2,width)):(1.0) smooth freq w boxes lc rgb"red" lw 2. t "Frequency",\
     "" u 2:(1.0) smooth cumulative lc rgb"black" t "Cumulative"


set xrange [ * : * ]
set yrange [ * : * ]
stats file u 3
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ -15 : 165 ]
set zeroaxis
set style data points
set boxwidth width*0.95
print min, width, max
set key top left
set title "N = 1037375"
plot file u 3:(10.0*rand(0)-11.0) lc rgb"blue"  pt 8  t '', \
     "" u (hist($3,width)):(1.0) smooth freq w boxes lc rgb"red" lw 2. t "Frequency",\
     "" u 3:(1.0) smooth cumulative lc rgb"black" t "Cumulative"


set xrange [ * : * ]
set yrange [ * : * ]
stats file u 4
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ -15 : 165 ]
set zeroaxis
set style data points
set boxwidth width*0.95
print min, width, max
set key top left
set title "N = 1970626"
plot file u 4:(10.0*rand(0)-11.0) lc rgb"blue"   pt 8 t '', \
     "" u (hist($4,width)):(1.0) smooth freq w boxes lc rgb"red" lw 2. t "Frequency",\
     "" u 4:(1.0) smooth cumulative lc rgb"black" t "Cumulative"


set xrange [ * : * ]
set yrange [ * : * ]
stats file u 5
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ -15 : 165 ]
set zeroaxis
set style data points
set boxwidth width*0.95
print min, width, max
set key top left
set title "N = 4365249"
plot file u 5:(10.0*rand(0)-11.0) lc rgb"blue"  pt 8  t '', \
     "" u (hist($5,width)):(1.0) smooth freq w boxes lc rgb"red" lw 2. t "Frequency",\
     "" u 5:(1.0) smooth cumulative lc rgb"black" t "Cumulative"


set xrange [ * : * ]
set yrange [ * : * ]
stats file u 6
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min-width/2.0,width,max+width
set xrange [ min-width : max+width ]
set yrange [ -15 : 165 ]
set zeroaxis
set style data points
set boxwidth width*0.95
print min, width, max
set key top left
set title "N = 8895124"
plot file u 6:(10.0*rand(0)-11.0) lc rgb"blue"  pt 8 t '', \
     "" u (hist($6,width)):(1.0) smooth freq w boxes lc rgb"red" lw 2. t "Frequency",\
     "" u 6:(1.0) smooth cumulative lc rgb"black" t "Cumulative"

unset multiplot
### End multiplot
