########## Gss ##########

#######################################
## CREATE PLOTS FOR lMax=064 FOR Gss ##
#######################################


echo "set terminal postscript eps enhanced color size 18,7 'Helvetica,45'" >> next.plot
echo "set output 'Convergence.eps'" >> next.plot

#echo "set xlabel '{/Symbol k}=k{/Symbol Dt}' " >> next.plot
#echo "set ylabel '~G{.6\~}@_{s}^{s}(~w{.6\~},k{/Symbol Dt})' " >> next.plot

echo "set xr [0:45]" >> next.plot
echo "set yr [-0.49:1.2]" >> next.plot
echo "set xtics 10" >> next.plot
echo "set ytics 0.5" >> next.plot

#echo "set key top right " >> next.plot

echo "set multiplot layout 2,4" >> next.plot

echo "f(x)=+besj0(x)" >> next.plot
echo "set format x ''" >> next.plot

echo "set ylabel '~G{.6\~}@_{s}^{s}(~w{.4\~},k{/Symbol Dt})' offset 1.0,0" >> next.plot
echo "set tmargin at screen 0.95; set bmargin at screen 0.55; set lmargin at screen 0.07; set rmargin at screen 0.3" >> next.plot
echo "set label 1 'l_{max}=64' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST064/ENERGY_GREENSFUNCTIONS.txt' u ("'$3*$12'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot

echo "set format y ''" >> next.plot
echo "unset ylabel" >> next.plot
echo "unset label 1" >> next.plot
echo "set tmargin at screen 0.95; set bmargin at screen 0.55; set lmargin at screen 0.3; set rmargin at screen 0.53" >> next.plot
echo "set label 2 'l_{max}=128' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST128/ENERGY_GREENSFUNCTIONS.txt' u ("'$3*$12'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot

echo "unset label 2" >> next.plot
echo "set tmargin at screen 0.95; set bmargin at screen 0.55; set lmargin at screen 0.53; set rmargin at screen 0.76" >> next.plot
echo "set label 3 'l_{max}=256' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST256/ENERGY_GREENSFUNCTIONS.txt' u ("'$3*$12'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot

echo "unset label 3" >> next.plot
echo "set label 4 'l_{max}=512' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
echo "set tmargin at screen 0.95; set bmargin at screen 0.55; set lmargin at screen 0.76; set rmargin at screen 0.99" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST512/ENERGY_GREENSFUNCTIONS.txt' u ("'$3*$12'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot


echo "set format y" >> next.plot
echo "set format x" >> next.plot
echo "set xlabel '{/Symbol k}=k{/Symbol Dt}'" >> next.plot
echo "set ylabel '~F{.6\~}@_{as}^{&{a}s}(~w{0.6\~},k{/Symbol Dt})' offset 1.0,0" >> next.plot
echo "set tmargin at screen 0.55; set bmargin at screen 0.15; set lmargin at screen 0.07; set rmargin at screen 0.3" >> next.plot
echo "unset label 4" >> next.plot
echo "set label 5 'l_{max}=64' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST064/CHARGE_GREENSFUNCTIONS.txt' u ("'$3*$16'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot

echo "set format y ''" >> next.plot
echo "unset ylabel" >> next.plot
echo "set tmargin at screen 0.55; set bmargin at screen 0.15; set lmargin at screen 0.3; set rmargin at screen 0.53" >> next.plot
echo "unset label 5" >> next.plot
echo "set label 6 'l_{max}=128' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST128/CHARGE_GREENSFUNCTIONS.txt' u ("'$3*$16'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot

echo "set tmargin at screen 0.55; set bmargin at screen 0.15; set lmargin at screen 0.53; set rmargin at screen 0.76" >> next.plot
echo "unset label 6" >> next.plot
echo "set label 7 'l_{max}=256' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST256/CHARGE_GREENSFUNCTIONS.txt' u ("'$3*$16'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot

echo "set tmargin at screen 0.55; set bmargin at screen 0.15; set lmargin at screen 0.76; set rmargin at screen 0.99" >> next.plot
echo "unset label 7" >> next.plot
echo "set label 8 'l_{max}=512' at 25.0,0.8 rotate by 0 center  tc rgbcolor 'black'" >> next.plot
## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_lMax/CONVERGENCE_TEST512/CHARGE_GREENSFUNCTIONS.txt' u ("'$3*$16'"):4 lw 1 lc rgb '#00CCCC' ti '',"
STRING="$STRING f(x) lc rgb 'black' lw 3 ti 'free streaming'"
echo "p $STRING" >> next.plot

unset multiplot

gnuplot next.plot 
rm next.plot

ps2pdf -dEPSCrop Convergence.eps Convergence.pdf
rm Convergence.eps
