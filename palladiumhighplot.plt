#!/bin/bash

set terminal png
set output "plot-palladium-high-price.png"
set datafile separator ","
set title "Palladium High Price"
set xlabel "Time"
set xdata time
set timefmt '%Y-%m-%dT%H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xrange ['2024-05-11 16:00:00':'2024-05-12 00:00:00']
set xtics rotate
set ylabel "PalladiumHighPrice($)"
set autoscale y
plot "palladiumresults.txt" using 5:3 t "inbound" w linespoints
