set terminal png size 800,600
set output "latency_comparison.png"
set title "Latency Comparison between TCP Reno, TCP Vegas, and Mixed Scenarios"
set xlabel "Time (seconds)"
set ylabel "Latency (seconds)"
set grid
set key top right

plot "graphs/latency-reno.dat" using 1:2 with lines lw 2 title "TCP Reno", \
     "graphs/latency-vegas.dat" using 1:2 with lines lw 2 title "TCP Vegas", \
     "graphs/latency-mixed.dat" using 1:2 with lines lw 2 title "Mixed (Reno+Vegas)"
