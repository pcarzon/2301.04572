############ BACKGROUND ENERGY/PRESSURE ############
echo "set terminal postscript eps enhanced color 'Helvetica,24'" >> next.plot
echo "set output 'PressureEnergyRatio_RTA_Conformal.eps'" >> next.plot

echo "set xlabel 'Evolution time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T_{eff}/(e+P))]'" >> next.plot
echo "set ylabel 'Longitudinal Pressure/Energy: P_L/e'" >> next.plot

echo "set xr [0.01:4]" >> next.plot
echo "set yr [0:0.43]" >> next.plot

echo "set size ratio 0.589" >> next.plot

echo "set ytics 0.1" >> next.plot
echo "set mytics 10" >> next.plot
echo "set mxtics 5" >> next.plot


#echo "set log x" >> next.plot
#echo "set log y" >> next.plot
echo "set key at 1.8,0.41" >> next.plot

echo "set style data lines" >> next.plot

echo "set style line 1 lc rgb '#7F00FF' lw 3 dt ''" >> next.plot
echo "set style line 2 lc rgb '#0080FF' lw 3 dt ''" >> next.plot
echo "set style line 3 lc rgb '#00FF00' lw 3 dt ''" >> next.plot
echo "set style line 4 lc rgb '#FF8000' lw 3 dt ''" >> next.plot
#echo "set style line 5 lc rgb 'gray' lw 3 dt '-'" >> next.plot
echo "set style line 5 lc rgb '#FF0000' lw 3 dt ''" >> next.plot
echo "set style line 6 lc rgb 'black' lw 3 dt '.'" >> next.plot

echo "set style line 7 lc rgb '#7F00FF' lw 3 dt '-'" >> next.plot
echo "set style line 8 lc rgb '#0080FF' lw 3 dt '-'" >> next.plot
echo "set style line 9 lc rgb '#00FF00' lw 3 dt '-'" >> next.plot
echo "set style line 10 lc rgb '#FF8000' lw 3 dt '-'" >> next.plot
echo "set style line 11 lc rgb '#FF0000' lw 3 dt '-'" >> next.plot


echo "set multiplot" >> next.plot

echo "Eta1=1.0/(4.0*pi)" >> next.plot
echo "Eta2=1.0/(4.0*pi)" >> next.plot
echo "Eta3=1.0/(4.0*pi)" >> next.plot
echo "Eta4=1.0/(4.0*pi)" >> next.plot
echo "Eta5=1.0/(4.0*pi)" >> next.plot

echo "Neff=30.0/((16.0+3.0*7.0/4.0*6.0)*pi**2.0)" >> next.plot

# (1.0/(("'$8'")**(2.0/3.0)*((30.0/(Neff*pi**2))*"'$2'")**(1.0/4.0)))

echo "N1(x)=1.0/3.0-16.0/9.0*Eta1/x" >> next.plot
echo "N2(x)=1.0/3.0-16.0/9.0*Eta2/x" >> next.plot
echo "N3(x)=1.0/3.0-16.0/9.0*Eta3/x" >> next.plot
echo "N4(x)=1.0/3.0-16.0/9.0*Eta4/x" >> next.plot
echo "N5(x)=1.0/3.0-16.0/9.0*Eta5/x" >> next.plot

echo "set fit quiet" >> next.plot

echo "fit [1.15:] N1(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") via Eta1" >> next.plot
echo "fit [1.15:] N2(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") via Eta2" >> next.plot
echo "fit [1.15:] N3(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") via Eta3" >> next.plot
echo "fit [1.15:] N4(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") via Eta4" >> next.plot
echo "fit [1.15:] N5(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") via Eta5" >> next.plot


echo "set print 'FitParametersEtaRTAConformal.txt'" >> next.plot
echo "print '####################'" >> next.plot
echo "print '## 1 -> n_u=0.001 ##'" >> next.plot
echo "print '## 2 -> n_u=0.005 ##'" >> next.plot
echo "print '## 3 -> n_u=0.010 ##'" >> next.plot
echo "print '## 4 -> n_u=0.015 ##'" >> next.plot
echo "print '## 5 -> n_u=0.020 ##'" >> next.plot
echo "print '####################'" >> next.plot
echo "print 'Eta1=', Eta1" >> next.plot
echo "print 'Eta2=', Eta2" >> next.plot
echo "print 'Eta3=', Eta3" >> next.plot
echo "print 'Eta4=', Eta4" >> next.plot
echo "print 'Eta5=', Eta5" >> next.plot
echo "print '1/4pi=', 1.0/(4.0*pi)" >> next.plot


## GENERATE PLOT COMMAND ##
STRING1=""
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 1 ti '({/Symbol m}_u/T)_{eq}=0.02',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 2 ti '({/Symbol m}_u/T)_{eq}=0.11',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 3 ti '({/Symbol m}_u/T)_{eq}=0.24',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 4 ti '({/Symbol m}_u/T)_{eq}=0.37',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 5 ti '({/Symbol m}_u/T)_{eq}=0.56',"

#STRING1="$STRING1 1.0/3.0-16.0/9.0/(4.0*pi*x) ls 6 ti '',"
STRING1="$STRING1 N1(x) ls 7 ti '',"
STRING1="$STRING1 N2(x) ls 8 ti '',"
STRING1="$STRING1 N3(x) ls 9 ti '',"
STRING1="$STRING1 N4(x) ls 10 ti '',"
STRING1="$STRING1 N5(x) ls 11 ti ''"

echo "p $STRING1" >> next.plot


## SMALL PLOT ##
echo "set origin 0.4,0.19" >> next.plot
echo "set size 0.57,0.47" >> next.plot
echo "set xrange [0.3:0.5]" >> next.plot
echo "set yrange [0.087:0.14]" >> next.plot
echo "unset xlabel" >> next.plot
echo "unset ylabel" >> next.plot
echo "unset label" >> next.plot
echo "set tics scale 0.8 front" >> next.plot
echo "set xtics font ', 12'" >> next.plot
echo "set ytics font ', 12'" >> next.plot
echo "set ytics 0.01" >> next.plot
echo "set mytics 5" >> next.plot
echo "set xtics 0.05" >> next.plot
echo "set mxtics 5" >> next.plot
echo "set xtics offset 0,0.5" >> next.plot
echo "set ytics offset 0.5,0" >> next.plot

STRING2=""
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 1 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 2 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 3 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 4 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)):("'$4'"/"'$2'") ls 5 ti '',"

STRING2="$STRING2 N1(x) ls 7 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 N2(x) ls 8 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 N3(x) ls 9 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 N4(x) ls 10 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 N5(x) ls 11 ti ''" #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"

echo "p $STRING2" >> next.plot

echo "unset multiplot" >> next.plot

gnuplot next.plot 
rm next.plot

ps2pdf -dEPSCrop PressureEnergyRatio_RTA_Conformal.eps PressureEnergyRatio_RTA_Conformal.pdf
rm PressureEnergyRatio_RTA_Conformal.eps










## GET (e t^{4/3}_{infty} ##
EInfty1=`tail -n 1 VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/BACKGROUND_EVOLUTION.txt | awk '{print $2}'`
EInfty2=`tail -n 1 VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/BACKGROUND_EVOLUTION.txt | awk '{print $2}'`
EInfty3=`tail -n 1 VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/BACKGROUND_EVOLUTION.txt | awk '{print $2}'`
EInfty4=`tail -n 1 VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/BACKGROUND_EVOLUTION.txt | awk '{print $2}'`
EInfty5=`tail -n 1 VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/BACKGROUND_EVOLUTION.txt | awk '{print $2}'`


############ BACKGROUND ENERGY NORMALISED ############
echo "set terminal postscript eps enhanced color 'Helvetica,24'" >> next.plot
echo "set output 'Energy_Attractor_RTA_Conformal.eps'" >> next.plot

echo "set xlabel 'Evolution time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T_{eff}/(e+P))]'" >> next.plot
echo "set ylabel 'Energy attractor: {/Symbol t}^{4/3} T^{{/Symbol t}{/Symbol t}}/(e{/Symbol t}^{4/3})_{/Symbol \245}'" >> next.plot

echo "set xr [1e-2:40]" >> next.plot
echo "set yr [0:2]" >> next.plot


echo "set log x" >> next.plot
#echo "set log y" >> next.plot
echo "set key at 38,0.8" >> next.plot

echo "set style data lines" >> next.plot

echo "set style line 1 lc rgb '#7F00FF' lw 3 dt ''" >> next.plot
echo "set style line 2 lc rgb '#0080FF' lw 3 dt ''" >> next.plot
echo "set style line 3 lc rgb '#00FF00' lw 3 dt ''" >> next.plot
echo "set style line 4 lc rgb '#FF8000' lw 3 dt ''" >> next.plot
#echo "set style line 5 lc rgb 'gray' lw 3 dt '-'" >> next.plot
echo "set style line 5 lc rgb '#FF0000' lw 3 dt ''" >> next.plot
echo "set style line 6 lc rgb 'black' lw 3 dt '.'" >> next.plot

echo "set style line 7 lc rgb '#7F00FF' lw 3 dt '-'" >> next.plot
echo "set style line 8 lc rgb '#0080FF' lw 3 dt '-'" >> next.plot
echo "set style line 9 lc rgb '#00FF00' lw 3 dt '-'" >> next.plot
echo "set style line 10 lc rgb '#FF8000' lw 3 dt '-'" >> next.plot
echo "set style line 11 lc rgb '#FF0000' lw 3 dt '-'" >> next.plot


echo "Neff=30.0/((16.0+3.0*7.0/4.0*6.0)*pi**2.0)" >> next.plot

Eta1=1.0/4.0/pi
Eta2=1.0/4.0/pi
Eta3=1.0/4.0/pi
Eta4=1.0/4.0/pi
Eta5=1.0/4.0/pi

echo "set multiplot" >> next.plot

echo "CInfty1=0.869391" >> next.plot
echo "CInfty2=0.89355" >> next.plot
echo "CInfty3=0.910151" >> next.plot
echo "CInfty4=0.930054" >> next.plot
echo "CInfty5=0.940066" >> next.plot


echo "E1(x)=1.0/CInfty1*x**(4.0/9.0)" >> next.plot
echo "E2(x)=1.0/CInfty2*x**(4.0/9.0)" >> next.plot
echo "E3(x)=1.0/CInfty3*x**(4.0/9.0)" >> next.plot
echo "E4(x)=1.0/CInfty4*x**(4.0/9.0)" >> next.plot
echo "E5(x)=1.0/CInfty5*x**(4.0/9.0)" >> next.plot
echo "f(x)=1.0-2.0/(3.0*pi*x)" >> next.plot

#echo "F1(x)=1.0-2.0/(3.0*)" >> next.plot
#echo "F2(x)=1.0/CInfty2*x**(4.0/9.0)" >> next.plot
#echo "F3(x)=1.0/CInfty3*x**(4.0/9.0)" >> next.plot
#echo "F4(x)=1.0/CInfty4*x**(4.0/9.0)" >> next.plot
#echo "F5(x)=1.0/CInfty5*x**(4.0/9.0)" >> next.plot


echo "set fit quiet" >> next.plot

echo "fit [:0.02] E1(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta1)):("'$2'"/$EInfty1) via CInfty1" >> next.plot
echo "fit [:0.02] E2(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta2)):("'$2'"/$EInfty2) via CInfty2" >> next.plot
echo "fit [:0.02] E3(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta3)):("'$2'"/$EInfty3) via CInfty3" >> next.plot
echo "fit [:0.02] E4(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta4)):("'$2'"/$EInfty4) via CInfty4" >> next.plot
echo "fit [:0.02] E5(x) 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta5)):("'$2'"/$EInfty5) via CInfty5" >> next.plot

echo "set print 'FitParametersCInftyRTAConformal.txt'" >> next.plot
echo "print '####################'" >> next.plot
echo "print '## 1 -> n_u=0.001 ##'" >> next.plot
echo "print '## 2 -> n_u=0.005 ##'" >> next.plot
echo "print '## 3 -> n_u=0.010 ##'" >> next.plot
echo "print '## 4 -> n_u=0.015 ##'" >> next.plot
echo "print '## 5 -> n_u=0.020 ##'" >> next.plot
echo "print '####################'" >> next.plot
echo "print 'CInfty1=', CInfty1" >> next.plot
echo "print 'CInfty2=', CInfty2" >> next.plot
echo "print 'CInfty3=', CInfty3" >> next.plot
echo "print 'CInfty4=', CInfty4" >> next.plot
echo "print 'CInfty5=', CInfty5" >> next.plot

## GENERATE PLOT COMMAND ##
STRING1=""
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta1)):("'$2'"/$EInfty1) ls 1 ti '({/Symbol m}_u/T)_{eq}=0.02',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta2)):("'$2'"/$EInfty2) ls 2 ti '({/Symbol m}_u/T)_{eq}=0.11',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta3)):("'$2'"/$EInfty3) ls 3 ti '({/Symbol m}_u/T)_{eq}=0.24',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta4)):("'$2'"/$EInfty4) ls 4 ti '({/Symbol m}_u/T)_{eq}=0.37',"
STRING1="$STRING1 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta5)):("'$2'"/$EInfty5) ls 5 ti '({/Symbol m}_u/T)_{eq}=0.56',"


STRING1="$STRING1 E1(x) ls 7 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING1="$STRING1 E2(x) ls 8 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING1="$STRING1 E3(x) ls 9 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING1="$STRING1 E4(x) ls 10 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING1="$STRING1 E5(x) ls 11 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING1="$STRING1 f(x) ls 6 ti 'Navier-Stokes -- 1-2/(3{/Symbol p}~w{.4\~})'"

#echo "set object 1 rect from 0.015,0.99 to 1.35,1.5" >> next.plot
echo "set object 1 rect from 0.015,0.99 to 1.2,1.5" >> next.plot
echo "set object 1 rect fc rgb 'white' front fillstyle solid 0.0 noborder" >> next.plot

echo "p $STRING1" >> next.plot

## SMALL PLOT ##
echo "set origin 0.07,0.48" >> next.plot
echo "set size 0.6,0.5" >> next.plot
echo "set xrange [0.01:0.02]" >> next.plot
echo "set yrange [0.144:0.2]" >> next.plot
echo "unset xlabel" >> next.plot
echo "unset ylabel" >> next.plot
echo "unset label" >> next.plot
echo "unset object 1" >> next.plot
echo "set tics scale 0.8 front" >> next.plot
echo "set xtics font ', 12'" >> next.plot
echo "set ytics font ', 12'" >> next.plot
echo "set ytics 0.01" >> next.plot
echo "set mytics 5" >> next.plot
echo "set xtics 0.01" >> next.plot
echo "set xtics add ('0.02' 0.02)" >> next.plot
echo "set xtics offset 0,0.5" >> next.plot
echo "set ytics offset 0.5,0" >> next.plot

STRING2=""
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta1)):("'$2'"/$EInfty1) ls 1 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta2)):("'$2'"/$EInfty2) ls 2 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta3)):("'$2'"/$EInfty3) ls 3 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta4)):("'$2'"/$EInfty4) ls 4 ti '',"
STRING2="$STRING2 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/BACKGROUND_EVOLUTION.txt' u (("'$8'")**(2.0/3.0)*(Neff*"'$2'")**(1.0/4.0)/(4.0*pi*$Eta5)):("'$2'"/$EInfty5) ls 5 ti '',"

STRING2="$STRING2 E1(x) ls 7 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 E2(x) ls 8 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 E3(x) ls 9 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 E4(x) ls 10 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
STRING2="$STRING2 E5(x) ls 11 ti ''" #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"

echo "p $STRING2" >> next.plot

echo "unset multiplot" >> next.plot

gnuplot next.plot 
rm next.plot

ps2pdf -dEPSCrop Energy_Attractor_RTA_Conformal.eps Energy_Attractor_RTA_Conformal.pdf
rm Energy_Attractor_RTA_Conformal.eps






############ CHEMICAL POTENTIAL/TEMPERATURE ############
echo "set terminal postscript eps enhanced color 'Helvetica,24'" >> next.plot
echo "set output 'ChemicalPotential_RTA_Conformal.eps'" >> next.plot

echo "set xlabel 'Evolution time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T_{eff}/(e+P))]'" >> next.plot
echo "set ylabel 'Chemical Potential/Temperature: {/Symbol m}_u/T'" >> next.plot

echo "set xr [1e-2:40]" >> next.plot
echo "set yr [0:4]" >> next.plot

#echo "set size ratio 0.589" >> next.plot

#echo "set ytics 0.1" >> next.plot
#echo "set mytics 9" >> next.plot


echo "set log x" >> next.plot
#echo "set log y" >> next.plot
echo "set key at 25,3.5" >> next.plot

echo "set style data lines" >> next.plot

echo "set style line 1 lc rgb '#7F00FF' lw 3 dt ''" >> next.plot
echo "set style line 2 lc rgb '#0080FF' lw 3 dt ''" >> next.plot
echo "set style line 3 lc rgb '#00FF00' lw 3 dt ''" >> next.plot
echo "set style line 4 lc rgb '#FF8000' lw 3 dt ''" >> next.plot
#echo "set style line 5 lc rgb 'gray' lw 3 dt '-'" >> next.plot
echo "set style line 5 lc rgb '#FF0000' lw 3 dt ''" >> next.plot
echo "set style line 6 lc rgb 'black' lw 3 dt '.'" >> next.plot

echo "set style line 7 lc rgb '#7F00FF' lw 3 dt '-'" >> next.plot
echo "set style line 8 lc rgb '#0080FF' lw 3 dt '-'" >> next.plot
echo "set style line 9 lc rgb '#00FF00' lw 3 dt '-'" >> next.plot
echo "set style line 10 lc rgb '#FF8000' lw 3 dt '-'" >> next.plot
echo "set style line 11 lc rgb '#FF0000' lw 3 dt '-'" >> next.plot

echo "Neff=30.0/((16.0+3.0*7.0/4.0*6.0)*pi**2.0)" >> next.plot

Eta1=0.079687325443109
Eta2=0.0797525747701781
Eta3=0.0799342300644502
Eta4=0.0803625918555139
Eta5=0.0811949520580463

## GENERATE PLOT COMMAND ##
STRING=""
STRING="$STRING 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0001/INTENSIVE_QUANTITIES.txt' u (("'$6'")**(2.0/3.0)*(Neff*"'$7'")**(1.0/4.0)/(4.0*pi*$Eta1)):("'$3'"/"'$2'") ls 1 ti '({/Symbol m}_u/T)_{eq}=0.02',"
STRING="$STRING 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0005/INTENSIVE_QUANTITIES.txt' u (("'$6'")**(2.0/3.0)*(Neff*"'$7'")**(1.0/4.0)/(4.0*pi*$Eta2)):("'$3'"/"'$2'") ls 2 ti '({/Symbol m}_u/T)_{eq}=0.11',"
STRING="$STRING 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_001/INTENSIVE_QUANTITIES.txt' u (("'$6'")**(2.0/3.0)*(Neff*"'$7'")**(1.0/4.0)/(4.0*pi*$Eta3)):("'$3'"/"'$2'") ls 3 ti '({/Symbol m}_u/T)_{eq}=0.24',"
STRING="$STRING 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_0015/INTENSIVE_QUANTITIES.txt' u (("'$6'")**(2.0/3.0)*(Neff*"'$7'")**(1.0/4.0)/(4.0*pi*$Eta4)):("'$3'"/"'$2'") ls 4 ti '({/Symbol m}_u/T)_{eq}=0.37',"
STRING="$STRING 'VARYING_DENSITIES/BACKGROUND_CONFORMAL_RTA_002/INTENSIVE_QUANTITIES.txt' u (("'$6'")**(2.0/3.0)*(Neff*"'$7'")**(1.0/4.0)/(4.0*pi*$Eta5)):("'$3'"/"'$2'") ls 5 ti '({/Symbol m}_u/T)_{eq}=0.56',"


#STRING="$STRING (1.0/$CInfty0001)*x**(4.0/9.0) ls 5 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
#STRING="$STRING (1.0/$CInfty0005)*x**(4.0/9.0) ls 5 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
#STRING="$STRING (1.0/$CInfty001)*x**(4.0/9.0) ls 5 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
#STRING="$STRING (1.0/$CInfty0015)*x**(4.0/9.0) ls 5 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
#STRING="$STRING (1.0/$CInfty002)*x**(4.0/9.0) ls 5 ti ''," #'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
#STRING="$STRING 'BACKGROUND_RTA_CONFORMAL/BACKGROUND_EVOLUTION.txt' u (30.0/(16.0*pi**2)*"'$8'"*("'$2'")**(1.0/4.0)):((1.0/$CInfty)*(30.0/(16.0*pi**2)*"'$8'"*("'$2'")**(1.0/4.0))**(4.0/9.0)) ls 5 ti 'Free Streaming -- C@^{-1}_{/Symbol \245} ~w{.6\~}^{4/9}',"
#STRING="$STRING 1.0-2.0/(3.0*pi*x) ls 6 ti 'Navier-Stokes Hydro -- 1-2/3{/Symbol p}~w{.6\~}'" 

echo "p $STRING" >> next.plot

gnuplot next.plot 
rm next.plot

ps2pdf -dEPSCrop ChemicalPotential_RTA_Conformal.eps ChemicalPotential_RTA_Conformal.pdf
rm ChemicalPotential_RTA_Conformal.eps