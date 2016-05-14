isMult :: Integer -> Bool
isMult n
    | n `mod` 3 == 0 = True
    | n `mod` 5 == 0 = True
    | otherwise = False

result :: Integer
result = sum $ filter isMult [1..999]
