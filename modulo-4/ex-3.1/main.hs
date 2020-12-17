-- 3.1 - Implemente a função filter paramétrica
-- filter :: (a → Bool) → [a] → [a]
-- Use recursão.

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter f [] = []
myfilter f l = do
 let head_list = head l
 let filtered_tail = myfilter f (tail l)
 case f head_list of
 	True -> head_list : filtered_tail
 	False -> filtered_tail


list = [1,2,3,4,5,6,7,8,9,10]
filtered_list = myfilter (\x -> x `mod` 2 == 0) list

main = print filtered_list