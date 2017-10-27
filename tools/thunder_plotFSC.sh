#!/bin/tcsh -f

# wrote by Xueming Li @ Tsinghua University

if($# < 1) then 
	echo "    Plot FSC curve form THUNDER"
    echo "    Input: FSC1.txt FSC2.txt ..."
    exit
endif

set title = `basename THUNDER_FSC`
gnuplot -persist  << EOSc
fc1(x) = 0.143
fc2(x) = 0.5
set yrange [0:1.1]
set title "${title}"  font 'Time-Roman,20'
set key spacing 0.8 font 'Time-Roman,20'
set xlabel 'Spatial Frequency (1/A)' font 'Time-Roman,20'
set ylabel 'FSC'  font 'Time-Roman,20'
set xtics  font 'Time-Roman,20'
set ytics  font 'Time-Roman,20'
set multiplot
set grid
plot for [filename in "$argv"] filename using  (1/\$2):(\$3) with line lw 2 title filename, \
     fc1(x) with lines lw 1 lt -1 notitle, \
     fc2(x) with lines lw 1 lt -1 notitle
EOSc


