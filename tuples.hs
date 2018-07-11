student = ("Bob", "Smith")
getFirstName student = fst student
getLastName student = snd student

getFirstNameOther (f, l) = f
getLastNameOther (f, l) = l

ys = [1..10]
xs = [1..10]

main = do
      print (getFirstName student)
      print (getLastName student)
      print (getFirstNameOther student)
      print (getLastNameOther student)
      print (zip ys xs)
