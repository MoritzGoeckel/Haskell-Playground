--enum
data myEnum = Red
            | Green
            | Yellow
        deriving show

--Struct
data Customer = Customer String String Double
    deriving show

--Getter / Setter
getBalance (Customer _ _ b) = b
setBalance (Customer firstName lastName _) newBalance = Customer firstName lastName newBalance

tomSmith = Customer "Tom" "Smith" 0
--getBalance tomSmith

--Type
type Student = (String, Int, [Int])
type DB = [Student]

--General Example
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving Show

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs (x2 - x)) * (abs (y2 - y))

--Other way of writing data
data Employee = Employee { name :: String, position :: String, idNum :: Int } 
    deriving (Eq, Show)

sam = Employee {name = "Sam", position = "Guy", idNum = 10}
