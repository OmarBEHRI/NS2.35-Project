set terminal png size 800,600
set output "loss_comparison.png"
set title "Packet Loss Comparison between TCP Reno, TCP Vegas, and Mixed Scenarios"
set xlabel "Time (seconds)"
set ylabel "Packet Loss Rate (%)"
set grid
set key top right

plot "graphs/loss-reno.dat" using 1:2 with lines lw 2 title "TCP Reno", \
     "graphs/loss-vegas.dat" using 1:2 with lines lw 2 title "TCP Vegas", \
     "graphs/loss-mixed.dat" using 1:2 with lines lw 2 title "Mixed (Reno+Vegas)"
