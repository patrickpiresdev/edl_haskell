-- VAREJO
-- Uma loja de produtos eletrônicos que deseja dar
-- 10% de desconto para seus clientes

data Product = Product {
 name :: String,
 value :: Float
} deriving(Show)

product1 = Product "Mi Band 5" 250.0
product2 = Product "Earbuds Basic" 199.99

products = [product1, product2]

give_discount product = do
 let current_value = value product
 product { value=current_value*0.9 }

main = do
 print products
 print(map give_discount products)