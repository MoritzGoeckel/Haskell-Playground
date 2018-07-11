factorial 0 = 1
factorial n = n * factorial (n - 1)

factorialProduct n = product [1..n]

main = do
    putStrLn "Hallo :)"
    putStrLn (show (factorial 10))
    putStrLn (show (factorialProduct 10))
