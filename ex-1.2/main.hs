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

get_suit_symbol suit = case suit of
 "ouros" -> ":diamonds:"
 "copas" -> ":hearts:"
 "espadas" -> ":spades:"
 "paus" -> ":clubs:"

add_suit_symbol_in_card card = do
 let suit = get_suit_symbol (snd card)
 ((fst card), suit)

change_suits [] = []
change_suits cards = do
 let card = head cards
 let changed_card = add_suit_symbol_in_card card
 changed_card : change_suits (tail cards)

cards_changed_suit = change_suits cards_in_hand

main = print_cards cards_changed_suit