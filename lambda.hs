main = print (
        foldl (\x -> \y -> x * 2 + y) 0 [1, 2, 3, 4]
    )
