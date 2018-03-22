myIsEven n
  | n `mod` 2 == 0 = True
  | otherwise      = False

main = print(myIsEven 10)
