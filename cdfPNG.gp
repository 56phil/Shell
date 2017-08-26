unset multiplot
reset
set terminal png size 850,1100 font ",8"
file = 'hist.dat'
set output 'hist.png'


set xtics format "%0.0f" nomirror
set xlabel "Time"
set ylabel "Density"
set ytics format "%0.0f"
set ytics nomirror
set style line 2 lt 1
set style fill solid
n=9.0
hist(x,width)=width*floor(x/width)+width/2
set bar 1.000000 front
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set xzeroaxis
set yzeroaxis
set zzeroaxis
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback


set multiplot layout 3,2 rowsfirst
stats file u 1
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
print min, width, max
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ * : * ]
set zeroaxis
set style data points
set boxwidth width*0.8
set key top left
set title "2^{19}"
plot file u 1:(10.0*rand(0)-15.0) t '', \
     "" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"#008f8f" lw 2. t "Frequency",\
     "" u 1:(1.0) smooth cumulative lc rgb"red" t "Cumulative"


stats file u 2
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ * : * ]
set zeroaxis
set style data points
set boxwidth width*0.8
print min, width, max
set key top left
set title "2^{20}"
plot file u 2:(10.0*rand(0)-15.0) t '', \
     "" u (hist($2,width)):(1.0) smooth freq w boxes lc rgb"#008f8f" lw 2. t "Frequency",\
     "" u 2:(1.0) smooth cumulative lc rgb"red" t "Cumulative"



stats file u 3
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ * : * ]
set zeroaxis
set style data points
set boxwidth width*0.8
print min, width, max
set key top left
set title "2^{21}"
plot file u 3:(10.0*rand(0)-15.0) t '', \
     "" u (hist($3,width)):(1.0) smooth freq w boxes lc rgb"#008f8f" lw 2. t "Frequency",\
     "" u 3:(1.0) smooth cumulative lc rgb"red" t "Cumulative"



stats file u 4
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ * : * ]
set zeroaxis
set style data points
set boxwidth width*0.8
print min, width, max
set key top left
set title "2^{22}"
plot file u 4:(10.0*rand(0)-15.0) t '', \
     "" u (hist($4,width)):(1.0) smooth freq w boxes lc rgb"#008f8f" lw 2. t "Frequency",\
     "" u 4:(1.0) smooth cumulative lc rgb"red" t "Cumulative"



stats file u 5
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max+width
set xrange [ min-width : max+width ]
set yrange [ * : * ]
set zeroaxis
set style data points
set boxwidth width*0.8
print min, width, max
set key top left
set title "2^{23}"
plot file u 5:(10.0*rand(0)-15.0) t '', \
     "" u (hist($5,width)):(1.0) smooth freq w boxes lc rgb"#008f8f" lw 2. t "Frequency",\
     "" u 5:(1.0) smooth cumulative lc rgb"red" t "Cumulative"



stats file u 6
max=ceil(STATS_max)
min=floor(STATS_min)
width=(max-min)/(n+1.)
set boxwidth width
set xtics min,width,max
set xrange [ min-width : max+width ]
set yrange [ * : * ]
set zeroaxis
set style data points
set boxwidth width*0.8
print min, width, max
set key top left
set title "2^{24}"
plot file u 6:(10.0*rand(0)-15.0) t '', \
     "" u (hist($6,width)):(1.0) smooth freq w boxes lc rgb"#008f8f" lw 2. t "Frequency",\
     "" u 6:(1.0) smooth cumulative lc rgb"red" t "Cumulative"

unset multiplot

### End multiplot

