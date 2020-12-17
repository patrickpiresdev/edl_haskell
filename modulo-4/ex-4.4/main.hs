-- 4.4 - Implemente a função fold paramétrica

myfold :: (a -> b -> b) -> b -> [a] -> b
myfold f acc [] = acc
myfold f acc l = do
 let new_acc = myfold f acc (tail l)
 f (head l) new_acc

cards_in_hand = [
 ("A", "espadas"), ("7", "espadas"),
 ("K", "espadas"), ("J", "espadas"),
 ("Q", "espadas"), ("2", "espadas"),
 ("3", "copas"),   ("4", "ouros"),
 ("5", "ouros"),   ("6", "paus")]

get_point card = case (fst card) of
 "A" -> 11
 "7" -> 10
 "K" -> 4
 "J" -> 3
 "Q" -> 2
 otherwise -> 0

aggregate_card_point card points = points + (get_point card)
get_points cards = myfold aggregate_card_point 0 cards

points = get_points cards_in_hand

main = print points