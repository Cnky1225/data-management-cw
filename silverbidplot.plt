#!/bin/bash

set terminal png
set output "plot-silver-bid-price.png"
set datafile separator ","
set title "Silver Bid Price"
set xlabel "Time"
set xdata time
set timefmt '%Y-%m-%dT%H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xrange ['2024-05-11 16:00:00':'2024-05-12 00:00:00']
set xtics rotate
set ylabel "SilverBidPrice($)"
set autoscale y
plot "silverresults.txt" using 5:1 t "inbound" w linespoints
