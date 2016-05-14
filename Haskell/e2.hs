step :: [Int] -> [Int]
step (x:y:xs) = (x + y):x:y: xs

fibseq :: [Int] -> [Int]
fibseq (x:xs)
    | x > 4000000 = x:xs
    | otherwise = fibseq . step $ (x:xs)

fibonacci :: [Int]
fibonacci = fibseq [2,1]

result :: Int
result = sum $ filter (\x -> x < 4000000 && even x) fibonacci
