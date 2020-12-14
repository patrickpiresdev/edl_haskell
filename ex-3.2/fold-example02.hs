-- Convertendo de binário para decimal

convert acc (position, number)
 | number == "1" = 2**position + acc
 | otherwise = acc

bin_2_dec bin = do
 foldl convert 0 $ zip [0..] (map (:[]) bin)

main = do
 print(bin_2_dec "1111")