zeroTen = [0..10]
even = [2,4..20]
letterList = ['A'..'Z']
infiniteList = [10,20..]
c = take 10 (cycle [1,2,3])
timesTwo = [x * 2 | x <- [1..10], x * 2 < 50]

main = do
  print zeroTen
  print c

