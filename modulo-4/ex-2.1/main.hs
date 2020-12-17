-- 2.1 - Considere a definição paramétrica de listas a seguir...

-- data Lista a = No a (Lista a) | Vazio

-- Crie uma lista que guarde sublistas de inteiros.
-- Não use o tipo primitivo de Haskell para listas.

data List = Node Int List | Empty deriving(Show)
data ListOfList = Node_ List ListOfList | Empty_ deriving(Show)

list :: List
list = Node 1 (Node 2 (Node 3 Empty))

list2 :: List
list2 = Node 4 (Node 5 Empty)

list_of_list :: ListOfList
list_of_list = Node_ list (Node_ list2 Empty_)

main = print list_of_list