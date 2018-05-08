mulCurry = \x -> \y -> x * y
mulUncurry = \(x,y) -> x * y

curry f = \x -> \y -> f (x, y)
uncurry f = \(x, y) -> f x y

main = do
        print(mulCurry 3 4)
        print(mulUncurry (3, 4))
