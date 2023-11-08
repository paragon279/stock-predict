# Stockast
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FRajdeepKonwar%2Fstockast.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2FRajdeepKonwar%2Fstockast?ref=badge_shield)

## Stock Market Forecasting using Parallel (OpenMP) Monte-Carlo Simulations

![Stockast Image](https://i.imgur.com/dHf0aRO.png)

### Compile Instructions

#### Windows
- Open `stockast.sln`
- [Optional] Right-click Solution 'stockast' in the Solution Explorer and select `Retarget solution`
- Build and run!


#### Linux
```shell
make
```
Type make clean to clean object files and the executable.


### Run Instructions

#### Windows
Simply run from Visual Studio or double-click the executable created inside x64\{config}\stockast.exe.

By default, the program will try and utilize the maximum system threads available. To use a specific number of threads, set the environment variable OMP_NUM_THREADS equal to the number of threads you want.

#### Linux

Set the number of threads to be used for computation:
```shell
export OMP_NUM_THREADS=number_of_threads
```
For example, 
```shell
export OMP_NUM_THREADS=8
```
Then run the program:
```shell
./stockast
```
### General Info
1. The input file "data.csv" contains the stock-price values for 3 hours prior to run-time; this acts as the history data and helps estimate market volatility.
2. The output file "opt.csv" contains the output (most likely outcome) price-vector from our code. You can use Excel or gnuplot to plot the resulting line graph of the predicted stock pricing.
3. (Linux only) The script "profiling.sh" runs the parallel code from 1 to the specified number of threads. To use the script:
```shell
./profiling.sh "number_of_threads"
```
For example, 
```shell
./profiling.sh 8
```
