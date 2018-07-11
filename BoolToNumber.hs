instance Num Bool where
   False + False = False
   _ + _         = True
   
   True - False  = True
   _ - _  = False
   
   True * True   = True
   _ * _         = False
      
   abs x         = x
  
   signum 0      = 0
   signum _      = 1
  
   fromInteger x
               | x > 0     = True
               | otherwise = False