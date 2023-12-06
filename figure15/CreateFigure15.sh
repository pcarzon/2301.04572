echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'Gstd_K_KappaMode.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-1.5:1.5]" >> next.plot
echo "set xr [:20.32]" >> next.plot

echo "set ylabel 'Pressure resp.: 3~G{.6\~}@_{s}^{t,{/Symbol d}}(~w{.4\~},k{/Symbol Dt})'" >> next.plot

echo "Neff=30.0/((16.0+3.0*7.0/4.0*6.0)*pi**2.0)" >> next.plot

echo "set lmargin 0.2" >> next.plot

echo "besj2(x)=2.0/x*besj1(x)-besj0(x)" >> next.plot
echo "besj3(x)=4.0/x*besj2(x)-besj1(x)" >> next.plot

echo "Gs(x)=+besj0(x)" >> next.plot
echo "Gv(x)=+besj1(x)" >> next.plot
echo "Gd(x)=+besj1(x)/x" >> next.plot
echo "Gk(x)=-besj2(x)" >> next.plot

echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set colorbox user origin screen 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot

echo "set xlabel 'Wave number: {/Symbol k}=k{/Symbol Dt}'" >> next.plot

STRING="3.0*Gd(x) lc rgb '#000000' lw 15 ti 'free streaming',"
STRING="$STRING 'ENERGY_GREENSFUNCTIONS_COMBINED.txt' u ("'$3'"):(3.0*"'$8'"):(("'$12'")**(2.0/3.0)*(Neff*"'$13'")**(1.0/4.0)) w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop Gstd_K_KappaMode.eps Gstd_K_KappaMode.pdf
rm Gstd_K_KappaMode.eps


echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'Gsv_K_KappaMode.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-0.7:0.7]" >> next.plot
echo "set xr [:20.32]" >> next.plot

echo "set ylabel 'Momentum resp.: ~G{.6\~}@_{s}^{v}(~w{.4\~},k{/Symbol Dt})'" >> next.plot

echo "Neff=30.0/((16.0+3.0*7.0/4.0*6.0)*pi**2.0)" >> next.plot

echo "set lmargin 0.2" >> next.plot

echo "besj2(x)=2.0/x*besj1(x)-besj0(x)" >> next.plot
echo "besj3(x)=4.0/x*besj2(x)-besj1(x)" >> next.plot

echo "Gs(x)=+besj0(x)" >> next.plot
echo "Gv(x)=+besj1(x)" >> next.plot
echo "Gd(x)=+besj1(x)/x" >> next.plot
echo "Gk(x)=-besj2(x)" >> next.plot

echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set colorbox user origin screen 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot

echo "set xlabel 'Wave number: {/Symbol k}=k{/Symbol Dt}'" >> next.plot

STRING="Gv(x) lc rgb '#000000' lw 15 ti 'free streaming',"
STRING="$STRING 'ENERGY_GREENSFUNCTIONS_COMBINED.txt' u ("'$3'"):("'$6'"):(("'$12'")**(2.0/3.0)*(Neff*"'$13'")**(1.0/4.0)) w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop Gsv_K_KappaMode.eps Gsv_K_KappaMode.pdf
rm Gsv_K_KappaMode.eps


echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'Gstk_K_KappaMode.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-0.7:0.7]" >> next.plot
echo "set xr [:20.32]" >> next.plot

echo "set ylabel 'Shear-stress resp.: ~G{.6\~}@_{s}^{t,k}(~w{.4\~},k{/Symbol Dt})'" >> next.plot

echo "Neff=30.0/((16.0+3.0*7.0/4.0*6.0)*pi**2.0)" >> next.plot

echo "set lmargin 0.2" >> next.plot

echo "besj2(x)=2.0/x*besj1(x)-besj0(x)" >> next.plot
echo "besj3(x)=4.0/x*besj2(x)-besj1(x)" >> next.plot

echo "Gs(x)=+besj0(x)" >> next.plot
echo "Gv(x)=+besj1(x)" >> next.plot
echo "Gd(x)=+besj1(x)/x" >> next.plot
echo "Gk(x)=-besj2(x)" >> next.plot

echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set colorbox user origin screen 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot

echo "set xlabel 'Wave number: {/Symbol k}=k{/Symbol Dt}'" >> next.plot

STRING="Gk(x) lc rgb '#000000' lw 15 ti 'free streaming',"
STRING="$STRING 'ENERGY_GREENSFUNCTIONS_COMBINED.txt' u ("'$3'"):("'$10'"):(("'$12'")**(2.0/3.0)*(Neff*"'$13'")**(1.0/4.0)) w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop Gstk_K_KappaMode.eps Gstk_K_KappaMode.pdf
rm Gstk_K_KappaMode.eps