set terminal png size 800,600
set output "throughput_comparison.png"
set title "Throughput Comparison between TCP Reno, TCP Vegas, and Mixed Scenarios"
set xlabel "Time (seconds)"
set ylabel "Throughput (bits/second)"
set grid
set key top right

plot "graphs/throughput-reno.dat" using 1:2 with lines lw 2 title "TCP Reno", \
     "graphs/throughput-vegas.dat" using 1:2 with lines lw 2 title "TCP Vegas", \
     "graphs/throughput-mixed.dat" using 1:2 with lines lw 2 title "Mixed (Reno+Vegas)"
