#!/bin/bash
set terminal png
set output "plot-palladium-ask-price.png"
set datafile separator ","
set title "Palladium Ask Price"
set xlabel "Time"
set xdata time
set timefmt '%Y-%m-%dT%H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xrange ['2024-05-11 16:00:00':'2024-05-12 00:00:00']
set xtics rotate
set ylabel "PalladiumAskPrice($)"
set autoscale y
plot "palladiumresults.txt" using 5:2 t "inbound" w linespoints
