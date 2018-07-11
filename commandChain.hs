main = putStrLn . show . sum [1, 2, 3]
-- Equivalent to putStrLn (show (sum [1, 2, 3]))

-- Dollar Sign
-- term2 (right of $) has higher precedence than term1

-- term1 $ term2

doSomthing = putStrLn . show $ 1 + 2
-- Equivalent to      . show  (1 + 2)
