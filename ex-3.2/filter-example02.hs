-- LIVRARIA
-- Site de uma livraria com o filtro de livros de fantasia
-- aplicado na listagem

data Book = Book {
 name :: String,
 category :: String
} deriving(Show)

book1 = Book "Senhor dos Aneis" "Fantasia"
book2 = Book "Estruturas de dados e seus algoritmos" "Tecnico"
book3 = Book "Código Limpo" "Tecnico"

is_fantasy_book book = (category book) == "Fantasia"

books = [book1, book2, book3]

main = do
 print books
 print (filter is_fantasy_book books)