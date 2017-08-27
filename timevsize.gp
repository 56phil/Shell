#!/usr/local/Cellar/gnuplot/5.0.6_3/bin/gnuplot
#
#
#    	G N U P L O T
#    	Version 5.0 patchlevel 6    last modified 2017-03-18
#
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2017
#    	Thomas Williams, Colin Kelley and many others
#
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
reset
set terminal qt 0 font "Sans,22"
set output
unset clip points
set clip one
unset clip two
set bar 1.000000 front
set border 31 front lt black linewidth 0.500 dashtype solid
set zdata
set ydata
set xdata
set y2data
set x2data
set boxwidth
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02, first 0.00000, 0.00000
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set dummy x, y
set format x "% h"
set format y "% h"
set format x2 "% h"
set format y2 "% h"
set format z "% h"
set format cb "% h"
set format r "% h"
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
unset grid
set raxis
set style parallel front  lt black linewidth 2.000 dashtype solid
set key title "Gap Factors" center
set key inside left top vertical Left noreverse enhanced autotitle nobox font ",9"
set key noinvert samplen 3.2 spacing 2.0 width 2 height 1.1
set key maxcolumns 4 maxrows 7
set key noopaque
unset label
unset arrow
set style increment default
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
set style textbox transparent margins  1.0,  1.0 border
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset decimalsign
unset micro
unset minussign
set view 60, 30, 1, 1
set samples 100, 100
set isosamples 10, 10
set surface
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
#set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set xtics border in scale 1,0.5 nomirror norotate  offset character 0, -0.25, 0 autojustify
set xtics  norangelimit autofreq  font ", 9" format "%0.0f"
set ytics border in scale 1,0.5 nomirror norotate  autojustify
set ytics  norangelimit autofreq  font ", 9"
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq  font ", 9"
set logscale x 2
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq  font ", 9"
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq  font ", 9"
unset for [i = 1:7] paxis i tics
set title ""
set title  font "" norotate
set timestamp bottom
set timestamp ""
set timestamp  font "" norotate
set rrange [ * : * ] noreverse nowriteback
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xrange [ * : * ] noreverse nowriteback
set xlabel "Number of Elements"
set xlabel  offset character 0, 0.0, 0 font ",15" textcolor lt -1 norotate
set x2label ""
set x2label  font "" textcolor lt -1 norotate
set x2range [ * : * ] noreverse nowriteback
set ylabel "Time (Seconds)"
set ylabel  offset character 2.0, 0, 0 font ",15" textcolor lt -1 rotate by -270
set y2label ""
set y2label  font "" textcolor lt -1 rotate by -270
set yrange [ * : * ] noreverse nowriteback
set y2range [ * : * ] noreverse nowriteback
set zlabel ""
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse nowriteback
set cblabel ""
set cblabel  font "" textcolor lt -1 rotate by -270
set cbrange [ * : * ] noreverse nowriteback
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "en_US.UTF-8"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set loadpath
set fontpath
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "qt"
x = 0.0
fng = "TimevSize.gp"
fnt = "TimevSize.tex"
t = 0.0
## Last datafile plotted: "TimevSize.dat"
plot "TimevSize.dat" \
   using 1:2  title "2.00" w lp lc rgb '#006490' lw 1.00 pt  1 ps 1,\
"" using 1:3  title "2.05" w lp lc rgb '#006400' lw 1.00 pt  2 ps 1,\
"" using 1:4  title "2.10" w lp lc rgb '#0064ff' lw 1.00 pt  3 ps 1,\
"" using 1:5  title "2.15" w lp lc rgb '#806400' lw 1.00 pt  4 ps 1,\
"" using 1:6  title "2.20" w lp lc rgb '#44aa00' lw 1.00 pt  5 ps 1,\
"" using 1:7  title "2.25" w lp lc rgb '#4B0082' lw 1.00 pt  6 ps 1,\
"" using 1:8  title "2.30" w lp lc rgb '#000000' lw 1.00 pt  7 ps 1,\
"" using 1:9  title "2.35" w lp lc rgb '#55cc55' lw 1.00 pt  8 ps 1,\
"" using 1:10 title "2.40" w lp lc rgb '#777700' lw 1.00 pt  9 ps 1,\
"" using 1:11 title "2.45" w lp lc rgb '#337777' lw 1.00 pt 10 ps 1,\
"" using 1:12 title "2.50" w lp lc rgb '#3377f7' lw 1.00 pt 11 ps 1,\
"" using 1:13 title "2.55" w lp lc rgb '#330777' lw 1.00 pt 12 ps 1,\
"" using 1:14 title "2.60" w lp lc rgb '#33c777' lw 1.00 pt 13 ps 1,\
"" using 1:15 title "2.65" w lp lc rgb '#3377c7' lw 1.00 pt 14 ps 1,\
"" using 1:16 title "2.70" w lp lc rgb '#c37777' lw 1.00 pt 15 ps 1,\
"" using 1:17 title "2.75" w lp lc rgb '#337700' lw 1.00 pt 16 ps 1,\
"" using 1:18 title "2.80" w lp lc rgb '#6307c0' lw 1.00 pt 17 ps 1,\
"" using 1:19 title "2.85" w lp lc rgb '#63a740' lw 1.00 pt 18 ps 1,\
"" using 1:20 title "2.90" w lp lc rgb '#662200' lw 1.00 pt 19 ps 1,\
"" using 1:21 title "2.95" w lp lc rgb '#558800' lw 1.00 pt 20 ps 1,\
"" using 1:22 title "3.00" w lp lc rgb '#558890' lw 1.00 pt 21 ps 1

#    EOF
