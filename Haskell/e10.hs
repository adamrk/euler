--isNotDiv :: (Integral a) => [a] -> a -> Bool
--isNotDiv [] _ = True
--isNotDiv xs n = all (\x -> n `mod` x /= 0) xs 
--
--addPrime :: (Integral a) => [a] -> a -> [a]
--addPrime xs n
--    | isNotDiv xs n = xs ++ [n]
--    | otherwise = xs

markedNumbers :: (Integral a) => a -> [(a, Bool)]
markedNumbers n = zip [2..n] (repeat True)

removeMult :: (Integral a) => ([a], a) -> ([a], a)
removeMult (xs, n) = (newxs, newn)
    where newxs = [x | x <- xs, x `mod` n /= 0 || x == n]
          newn = head $ filter (>n) newxs

filterTo :: (Integral a) => a -> ([a], a) -> ([a], a)
filterTo n (xs, m)
    | m > n = (xs, m)
    | otherwise = filterTo n (removeMult (xs, m))

primesTo :: (Integral a) => a -> [a]
primesTo n = fst $ filterTo root ([2..n], 2)
    where root = floor . sqrt . fromIntegral $ n

result :: (Integral a) => a
result = sum $ primesTo 2000000

seive :: [Integer] -> [Integer] -> [Integer]
seive ps [] = ps
seive ps (p:cs) = seive (p:ps) (filter (\x -> 0 /= x `mod` p) cs)

result2 :: Integer
result2 = sum $ seive [] [2..2000000]
