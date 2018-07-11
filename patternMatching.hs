analyzeList [] = "Its empty"
analyzeList (x:[]) = "Its one element: " ++ show x
analyzeList (x:y:[]) = "Its two elements: " ++ show x ++ show y
analyzeList (x:xs) = "Its many items"

main = print (analyzeList [1, 2, 3])
