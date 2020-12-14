-- Com base nas setas "clicadas" no teclado (moves),
-- um vetor é montado

moves = ["right", "up", "up", "up", "right", "down", "left"]

handle_move accumulator move
 | move == "right" = ((fst accumulator)+1, snd accumulator)
 | move == "left"  = ((fst accumulator)-1, snd accumulator)
 | move == "up"    = (fst accumulator, (snd accumulator)+1)
 | move == "down"  = (fst accumulator, (snd accumulator)-1)

vector = foldl handle_move (0, 0) moves
main = print vector