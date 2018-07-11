-- + uses Num
-- :t (+) //Shows signature in ghci

-- Signature of +
-- (+) :: Num a => a -> a -> a

-- Num is a typeclass
-- Int Float Double are Instances of Num

data Employee = Employee { name :: String, position :: String, idNum :: Int } 
    --deriving (Eq, Show)

sam = Employee {name = "Sam", position = "Janitor", idNum = 10}
pam = Employee {name = "Pam", position = "Manager", idNum = 11}

--derived Eq
isSamPam = sam == pam

--derived show
showSam = show sam 

--define our own Eq
instance Eq Employee 
    where
        Employee _ _ idNum1 == Employee _ _ idNum2 = idNum1 == idNum2

--define our own Show
instance Show Employee
    where
        show (Employee name position _) = position ++ " " ++ name

--define a class
--MyHash defines a function getHash
class MyHash a 
    where
        getHash :: a -> Int

instance MyHash Employee
    where
        getHash (Employee name position id) = ((length name) + (length position) + id) `mod` 30

main = do 
        print sam
        print $ getHash sam

