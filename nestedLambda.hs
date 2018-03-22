mulCurry = \x -> \y -> x * y
mulUncurry = \(x,y) -> x * y

main = do
        print(mulCurry 3 4)
        print(mulUncurry (3, 4))
