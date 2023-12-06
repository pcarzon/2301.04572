echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'GsvCoordinateSpace.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-1.5:2.0]" >> next.plot
echo "set xr [:1.5]" >> next.plot
echo "set xtics 0.5" >> next.plot

echo "set lmargin 0.2" >> next.plot

echo "set xlabel 'Distance: {/Symbol D}x/{/Symbol Dt}'" >> next.plot
echo "set ylabel 'Momentum resp.: {/Symbol Dt}^2 G@_{s}^{v}({/Symbol D}x,{/Symbol Dt},~w{.4\~})' offset 0,-1.0" >> next.plot

echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot
echo "set colorbox user origin 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot

STRING=""
STRING="${STRING} 'EnergyResponse_FS_X.txt' u ("'$5'"==0.0?"'$1'"/"'$2'":1/0):("'$7'"*"'$2'"**2):("'$5'") w l lw 10 dt '' lc rgb '#000000' ti 'free streaming'," 
STRING="${STRING} 'InterpolatedGreensFunctions.txt' u ("'$2'"):("'$6'"):("'$1'") w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop GsvCoordinateSpace.eps GsvCoordinateSpace.pdf
rm GsvCoordinateSpace.eps


echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'GstdCoordinateSpace.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-1.5:2.0]" >> next.plot
echo "set xr [:1.5]" >> next.plot
echo "set xtics 0.5" >> next.plot

echo "set lmargin 0.2" >> next.plot

echo "set xlabel 'Distance: {/Symbol D}x/{/Symbol Dt}'" >> next.plot
echo "set ylabel 'Pressure resp.: 3{/Symbol Dt}^2 G@_{s}^{t,{/Symbol d}}({/Symbol D}x,{/Symbol Dt},~w{.4\~})' offset 0,-1.0" >> next.plot

echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot
echo "set colorbox user origin 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot

STRING=""
STRING="${STRING} 'EnergyResponse_FS_X.txt' u ("'$5'"==0.0?"'$1'"/"'$2'":1/0):(3.0*"'$8'"*"'$2'"**2):("'$5'") w l lw 10 dt '' lc rgb '#000000' ti 'free streaming'," 
STRING="${STRING} 'InterpolatedGreensFunctions.txt' u ("'$2'"):(3.0*"'$7'"):("'$1'") w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop GstdCoordinateSpace.eps GstdCoordinateSpace.pdf
rm GstdCoordinateSpace.eps


echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'GstrCoordinateSpace.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-1.5:2.0]" >> next.plot
echo "set xr [:1.5]" >> next.plot
echo "set xtics 0.5" >> next.plot

echo "set lmargin 0.2" >> next.plot

echo "set xlabel 'Distance: {/Symbol D}x/{/Symbol Dt}'" >> next.plot
echo "set ylabel 'Shear-stress resp.: {/Symbol Dt}^2 G@_{s}^{t,r}({/Symbol D}x,{/Symbol Dt},~w{.4\~})' offset 0,-1.0" >> next.plot

echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot
echo "set colorbox user origin 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot

STRING=""
STRING="${STRING} 'EnergyResponse_FS_X.txt' u ("'$5'"==0.0?"'$1'"/"'$2'":1/0):("'$9'"*"'$2'"**2):("'$5'") w l lw 10 dt '' lc rgb '#000000' ti 'free streaming'," 
STRING="${STRING} 'InterpolatedGreensFunctions.txt' u ("'$2'"):("'$8'"):("'$1'") w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop GstrCoordinateSpace.eps GstrCoordinateSpace.pdf
rm GstrCoordinateSpace.eps