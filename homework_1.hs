type Student = (String, Int, [Int])
type DB = [Student]

getCourses (name, id, courses) = courses
getId (name, id, courses) = id

noDoubleEntry [] = True
noDoubleEntry [x] = True
noDoubleEntry (x:xs) = not (x `elem` xs) && (noDoubleEntry xs)

valid :: DB -> Bool
valid [] = True
valid [x] = noDoubleEntry (getCourses x)
valid (x:xs) = noDoubleEntry (getCourses x) && not (x `elem` xs) && valid xs

uniqueId :: DB -> Bool
uniqueId [] = True
uniqueId [x] = True
uniqueId xs = noDoubleEntry (map getId xs)

validWithUniqueId :: DB -> Bool
validWithUniqueId xs = uniqueId xs && valid xs

incons1 = [("Jack", 111, [141, 252, 141])]
incons2 = [("Jane", 112, [141, 252]), ("Jane", 112, [141, 252])]
cons1 = [("Jack", 111, [141, 252, 142])]
cons2 = [("Jack", 111, [141, 252, 142]), ("Jane", 112, [141, 252, 142])]
cons3 = [("Jack", 111, [141, 253, 144]), ("Jane", 112, [141, 259, 144]),("Jan", 111, [141, 2]),("Sieeeegfried", 111, [141, 2])]

getStudentsCourses :: DB -> Int -> [Int]
getStudentsCourses db studentId = getCourses (head findStudentsById)
      where
           findStudentsById = filter (\(name, id, courses) -> id == studentId) db

getStudentsInCourse :: DB -> Int -> [String]
getStudentsInCourse db courseId = getNamesOf getStudentsByCourse
     where
          getStudentsByCourse = filter (\(name, id, courses) -> courseId `elem` courses) db
          getNamesOf = map (\(name, id, courses) -> name)

quicksort gtThan [] = []
quicksort gtThan (p:xs) = (quicksort gtThan lesser) ++ [p] ++ (quicksort gtThan greater)
    where
        ltEqThan = \x -> \y -> not (gtThan x y)
        lesser = filter (gtThan p) xs
        greater = filter (ltEqThan p) xs

sortDB :: DB -> DB
sortDB db = quicksort nameLengthComp db
    where
         nameLengthComp = \(name1, id1, courses1) -> \(name2, id2, courses2) -> length name1 > length name2

-- TODO: merge :: DB -> DB -> Maybe DB

main = do
    print (sortDB cons3)
    print (getStudentsInCourse cons3 141)
    print (getStudentsInCourse cons3 259)
    print (getStudentsInCourse cons3 144)
    print (validWithUniqueId(incons1))
    print (validWithUniqueId(incons2))
    print (validWithUniqueId(cons1))
    print (validWithUniqueId(cons2))
