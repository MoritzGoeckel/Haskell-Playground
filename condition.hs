main = do switchcondition 9

ifcondition n = if n < 9
                then putStrLn "10 is < 9"
                else do putStr "10 is"
                        putStrLn " NOT < 9"

casecondition n = case n of
                9   -> putStr "Its 9"
                10  -> putStr "Its 10"
                _   -> putStr "Its something else"

switchcondition n
                | n == 9    = do putStr "Its 9"
                | otherwise = do putStr "Its something else"
