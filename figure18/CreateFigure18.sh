echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'FsvCoordinateSpace.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-0.5:]" >> next.plot
echo "set xr [:1.5]" >> next.plot
echo "set xtics 0.5" >> next.plot

echo "set lmargin 0.2" >> next.plot

echo "set xlabel 'Distance: {/Symbol D}x/{/Symbol Dt}'" >> next.plot
echo "set ylabel 'Current resp.: {/Symbol Dt}^2 F@_{s}^{v}({/Symbol D}x,{/Symbol Dt},~w{.4\~})' offset 0,-1.0" >> next.plot

echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot
echo "set colorbox user origin 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot

STRING=""
STRING="${STRING} 'ChargeResponse_FS_X.txt' u ("'$5'"==0.0?"'$1'"/"'$2'":1/0):("'$7'"*"'$2'"**2):("'$5'") w l lw 10 dt '' lc rgb '#000000' ti 'free streaming'," 
STRING="${STRING} 'InterpolatedGreensFunctions.txt' u ("'$2'"):("'$5'"):("'$1'") w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop FsvCoordinateSpace.eps FsvCoordinateSpace.pdf
rm FsvCoordinateSpace.eps