echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'Fass_K_KappaMode.eps'" >> next.plot

echo "set yr [-1.2:1.2]" >> next.plot
echo "set xr [:20.32]" >> next.plot

echo "set ylabel 'Charge resp.: ~F{.6\~}@_{s}^{s}(~w{.4\~},k{/Symbol Dt})'" >> next.plot

echo "Neff=30.0/((16.0+3.0*7.0/4.0*6.0)*pi**2.0)" >> next.plot

echo "besj2(x)=2.0/x*besj1(x)-besj0(x)" >> next.plot
echo "besj3(x)=4.0/x*besj2(x)-besj1(x)" >> next.plot

echo "Fs(x)=+besj0(x)" >> next.plot
echo "Fv(x)=+besj1(x)" >> next.plot

echo "set lmargin 0.2" >> next.plot


echo "set palette defined ( 0 '#CC0066', 0.25 '#CC00CC',0.5 '#6600CC',0.75 '#0000CC',1.0 '#0066CC',1.25 '#00CCCC',1.5 '#00CC66',1.75 '#00CC00',2.0 '#66CC00',3.0 '#CCCC00',4.0 '#CC6600',5.0 '#CC0000')" >> next.plot
echo "set colorbox user origin screen 0.86, screen 0.14  size screen 0.05,screen 0.8" >> next.plot
echo "set cbr [0:5]" >> next.plot
echo "set cbtics ('0' 0,'' 0.5,'1' 1,'' 1.5,'2' 2,'' 2.5,'3' 3,'' 3.5, '4' 4, '' 4.5, '5' 5)" >> next.plot
echo "set label 'Evo. time: ~w{.4\~}={/Symbol t}T_{eff}({/Symbol t})/[4{/Symbol p}~{/Symbol h}{.3\~}T/(e+P)]' rotate by 90 left at screen 0.8, screen 0.095 " >> next.plot

echo "set xlabel 'Wave number: {/Symbol k}=k{/Symbol Dt}'" >> next.plot
echo "set size square" >> next.plot

STRING="Fs(x) lw 15 lc rgb '#000000' ti 'free streaming',"
STRING="$STRING 'CHARGE_GREENSFUNCTIONS_COMBINED.txt' u ("'$3'"):("'$4'"):(("'$16'")**(2.0/3.0)*(Neff*"'$17'")**(1.0/4.0)) w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop Fass_K_KappaMode.eps Fass_K_KappaMode.pdf
rm Fass_K_KappaMode.eps


echo "set terminal postscript eps enhanced color 'Helvetica,30'" >> next.plot
echo "set output 'Gss_K_KappaMode.eps'" >> next.plot

echo "set size square" >> next.plot

echo "set yr [-1.5:1.5]" >> next.plot
echo "set xr [:20.32]" >> next.plot

echo "set ylabel 'Energy resp.: ~G{.6\~}@_{s}^{s}(~w{.4\~},k{/Symbol Dt})'" >> next.plot

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

STRING="Gs(x) lc rgb '#000000' lw 15 ti 'free streaming',"
STRING="$STRING 'ENERGY_GREENSFUNCTIONS_COMBINED.txt' u ("'$3'"):("'$4'"):(("'$12'")**(2.0/3.0)*(Neff*"'$13'")**(1.0/4.0)) w l lc palette ti ''"

echo "p $STRING" >> next.plot

gnuplot next.plot
rm next.plot

ps2pdf -dEPSCrop Gss_K_KappaMode.eps Gss_K_KappaMode.pdf
rm Gss_K_KappaMode.eps