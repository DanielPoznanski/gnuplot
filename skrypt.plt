plot "dane.dat" with errorbars
set term pdf size 4,3
set output "zadanieG3.pdf"
set title "Zadanie G3"
set xlabel "Energia (eV)"
set ylabel "Zliczenia /s"
set xrange [0.45:0.60]
set yrange [0:8]
f(x)=a*x+b
fit f(x) 'dane.dat' via a,b
set label sprintf("a = %1.1f",a) at -5,0.5
set label sprintf("b = %1.1f",b) at -5,1

plot f(x)lt rgb"blue", 'dane.dat'pt 7 lt rgb"red"