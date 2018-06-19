set title "ab bezier"

set terminal png
set output "graphs/bezier.png"

set grid y
set xlabel "request"
set ylabel "response (ms)"

plot "timing.data" using 9 smooth sbezier with lines title ""
