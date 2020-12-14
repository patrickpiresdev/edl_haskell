-- Listagem de alunos ordenando por nome -> CR -> Idade
import Data.List

data Student = Student {
 name :: String,
 age :: Int,
 cr :: Float
} deriving(Show)

student1 = Student "Leonardo" 25 7.0
student2 = Student "Ana" 20 8.0
student3 = Student "Carla" 27 9.0
student4 = Student "Bruno" 21 7.5
student5 = Student "Ana" 23 8.0
student6 = Student "Carla" 27 8.5

compare_students student1 student2
 =  compare (name student1) (name student2)
 <> compare (cr student1)   (cr student2)
 <> compare (age student1)  (age student2)

students = [student1, student2, student3, student4, student5, student6]
sorted_students = sortBy compare_students students

print_students students
 | (length students) == 0 = print ""
 | otherwise = do
 	print(head students)
 	print_students(tail students)

main = do
 print_students students
 print_students sorted_students