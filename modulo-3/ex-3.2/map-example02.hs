-- JOGOS
-- O jogo dará 100 pontos a mais no score de cada jogador
-- de um time pela partida vencida

data Player = Player {
 name :: String,
 score :: Int
} deriving(Show)

player1 = Player "Patrick" 100
player2 = Player "Felipe" 300

players = [player1, player2]

increase_score player = do
 let current_score = score player
 player { score=current_score+100 }

main = do
 print players
 print(map increase_score players)