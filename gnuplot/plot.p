set title "ab plot"

set terminal png
set output "graphs/plot.png"

set datafile separator "\t"
set timefmt "%s"

set grid y
set xlabel "response (ms)"
set xdata time
set xtics 5 rotate
set format x "%H:%M:%S"
set ylabel "response time (ms)"

plot "timing.data" using 2:5 with points title ""
