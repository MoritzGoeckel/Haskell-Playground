data mylist = Null | Cons a (mylist a)
data mytree = Leaf a | Node (mytree a) (mytree a)

instance Eq mylist where
			Null == Null = True
			Cons x xs == Cons y ys = Eq x y && Eq xs ys

data myRes = OK Int | Fail String

data Color = Red
			| Blue
			| Green
			deriving Show

showHead (Cons x xs) = printLn x			
		
main = do
		showHead (Cons 10 (Cons 11))
		Node (Leaf 10) (Leaf 11)
		OK 10
		Fail "Yooo"
		printLn "Yo"
	
	
quicksort x:xs = lesser ++ [x] ++ greater
	where
		lesser = filter (x>) xs
		greater = filter (x<=) xs
		