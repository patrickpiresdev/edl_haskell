-- 2.2 - Crie um tipo paramétrico para árvores binárias

-- 1. Crie uma árvore binária de booleanos.
-- 2. Crie uma árvore em que cada nó guarda uma lista de inteiros.

-- Leaf:
--  valor
--  dir
--  esq

data Tree a = Leaf a (Tree a) (Tree a) | Empty deriving (Show)

subtree4 :: Tree Int
subtree4 = Leaf 5 Empty Empty

subtree3 :: Tree Int
subtree3 = Leaf 4 Empty Empty

subtree2 :: Tree Int
subtree2 = Leaf 3 subtree3 subtree4

subtree1 :: Tree Int
subtree1 = Leaf 2 Empty Empty

tree :: Tree Int
tree = Leaf 1 subtree1 subtree2


main = print tree