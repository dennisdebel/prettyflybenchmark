# pretty fly benchmark
Small scripts to record and plot average and absolute bandwidth speeds. Included are some example files/plots.

##usage
$ ./speedtest.sh http://somehwerewith/100MB.zip argument
$ ./plot-absolute.tg & ./plot-avg.tg 

##more info
./speedtest.sh http://somehwerewith/100MB.zip argument
   `-> measure speed 3 times, records speeds in csv file, needs a name as argument 

./plot-absolute.tg
   `-> generates a plot.png from recorded data

./plot-avg.tg
   `-> generates a plot.png from averaged data

##dependencies
depends on: wget, gnuplot