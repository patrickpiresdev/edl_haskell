-- FINANCEIRO
-- Um banco deseja saber quais são seus clientes vips

data Client = Client {
 name :: String,
 is_vip :: Bool
} deriving(Show)

client1 = Client "Pedro" False
client2 = Client "Claudia" True
client3 = Client "Roberto" True

clients = [client1, client2, client3]

main = do
 print clients
 print (filter (\client -> is_vip client) clients)