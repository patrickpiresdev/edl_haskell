-- Jogo de sueca
-- Vou supor que conseguimos representar os naipes dos baralhos
-- da seguinte forma como se fossem emojis:
-- ouros   -> :diamonds:
-- copas   -> :hearts:
-- espadas -> :spades:
-- paus    -> :clubs:

cards_in_hand = [
 ("A", "espadas"), ("7", "espadas"),
 ("K", "espadas"), ("J", "espadas"),
 ("Q", "espadas"), ("2", "espadas"),
 ("3", "copas"),   ("4", "ouros"),
 ("5", "ouros"),   ("6", "paus")]

print_cards [] = print "-------------------"
print_cards cards = do
 print (head cards)
 print_cards (tail cards)

------ MAP ------
get_suit_symbol suit = case suit of
 "ouros" -> ":diamonds:"
 "copas" -> ":hearts:"
 "espadas" -> ":spades:"
 "paus" -> ":clubs:"

add_suit_symbol_in_card card = do
 let suit = get_suit_symbol (snd card)
 ((fst card), suit)

change_suits cards = map add_suit_symbol_in_card cards
cards_changed_suit = change_suits cards_in_hand

------ FILTER ------
get_cards_per_suit cards suit = filter (\card -> (snd card) == suit) cards
diamonds_cards = get_cards_per_suit cards_changed_suit ":diamonds:"

------ FOLD ------
get_point card = case (fst card) of
 "A" -> 11
 "7" -> 10
 "K" -> 4
 "J" -> 3
 "Q" -> 2
 otherwise -> 0

aggregate_card_point points card = points + (get_point card)
get_points cards = foldl aggregate_card_point 0 cards_changed_suit

points = get_points cards_changed_suit

main = do
 print_cards cards_changed_suit
 print_cards diamonds_cards
 print points
