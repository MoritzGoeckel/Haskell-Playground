timesTwo list = map (\i -> i * 2) list
devidableByThree list = filter (\i -> i `mod` 3 == 0) list

main = do
         print(timesTwo [1,2,3,4,5,6,7,8,9])
         print(devidableByThree [1,2,3,4,5,6,7,8,9])
         print(zipWith (*) [1,2,3] [0,0,1])
         print(foldl (+) 0 [1,2,3])
