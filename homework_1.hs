type Student = (String, Int, [Int])
type DB = [Student]

incons1 = [("Jack", 111, [141, 252, 141])]
incons2 = [("Jane", 112, [141, 252]), ("Jane", 112, [141, 252])]

-- Consistant means:
-- Courses per student only once
-- Student ID only once

valid :: DB -> Bool
valid [] = True
valid [x] = not . doubleEntry x[2]
valid (x:xs) = valid x && valid xs --Also check id

doubleEntry [] = True
doubleEntry [x] = True
doubleEntry (x:xs) = not . contains x xs && validCourses xs
