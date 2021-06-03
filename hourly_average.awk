#!/usr/bin/awk -F, -f

{
  hour = substr($1, 9, 2)
  sum[hour] += $2
  count[hour]++
}
END {
  for (hour in sum) {
    average = sum[hour] / count[hour]
    print hour, average
  }
}
