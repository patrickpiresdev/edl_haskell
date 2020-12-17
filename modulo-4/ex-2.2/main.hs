-- 2.2 - Crie um tipo paramétrico para árvores binárias

data Tree a = Leaf a (Tree a) (Tree a) | Empty deriving (Show)

-- 1. Crie uma árvore binária de booleanos.
tree1 :: Tree Bool
tree1 = Leaf True subtree11 subtree12

subtree11 :: Tree Bool
subtree11 = Leaf True Empty Empty

subtree12 :: Tree Bool
subtree12 = Leaf False subtree13 subtree14

subtree13 :: Tree Bool
subtree13 = Leaf False Empty Empty

subtree14 :: Tree Bool
subtree14 = Leaf True Empty Empty

exercise1 = do
 print "----- Arvore binaria de booleanos -----"
 print tree1
 print "---------------------------------------"

-- 2. Crie uma árvore em que cada nó guarda uma lista de inteiros.

tree2 :: Tree [Int]
tree2 = Leaf [1, 2] subtree21 Empty

subtree21 :: Tree [Int]
subtree21 = Leaf [3, 4] subtree22 subtree23

subtree22 :: Tree [Int]
subtree22 = Leaf [5, 6] Empty Empty

subtree23 :: Tree [Int]
subtree23 = Leaf [7, 8] Empty Empty

exercise2 = do
 print "----- Arvore binaria de lista de inteiros -----"
 print tree2
 print "-----------------------------------------------"

-- MAIN
main = do
 exercise1
 exercise2