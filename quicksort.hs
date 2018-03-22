quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
       lesser = filter (< p) xs
       greater = filter (>= p) xs

main = print(quicksort [3,6,1,7,3,4,1,5])
