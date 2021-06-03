# iost_hourly_average

## Usage
```
$ cat results.csv | ./hourly_average.awk | sort
00 5.43181
01 5.42103
02 5.41575
03 5.40975
04 5.40204
05 5.39636
06 5.37479
07 5.39608
08 5.39295
09 5.40997
10 5.39481
11 5.42372
12 5.41233
13 5.3864
14 5.37735
15 5.41897
16 5.39677
17 5.39798
18 5.39341
19 5.38188
20 5.38604
21 5.38065
22 5.35603
23 5.36825
```

### cron
```
0 * * * * echo `date "+\%Y\%m\%d\%H\%M"`,`curl -s https://coincheck.com/api/rate/iost_jpy |jq -r .rate` >> /path/to/results.csv
```
