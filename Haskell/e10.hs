-- removes multiples of n from xs (except n itself) newn is the next prime
removeMult :: (Integral a) => ([a], a) -> ([a], a)
removeMult (xs, n) = (newxs, newn)
    where newxs = [x | x <- xs, x `mod` n /= 0 || x == n]
          newn = head $ filter (>n) newxs

-- removes multiples unless the prime (m) is already larger than n
filterTo :: (Integral a) => a -> ([a], a) -> ([a], a)
filterTo n (xs, m)
    | m > n = (xs, m)
    | otherwise = filterTo n (removeMult (xs, m))

-- lists primes up to n by filtering out multiples of primes below sqroot of n
primesTo :: (Integral a) => a -> [a]
primesTo n = fst $ filterTo root ([2..n], 2)
    where root = floor . sqrt . fromIntegral $ n

result :: (Integral a) => a
result = sum $ primesTo 2000000

-- Another solution posted on the forum. Clearly much cleaner but seems to run slower
seive :: [Integer] -> [Integer] -> [Integer]
seive ps [] = ps
seive ps (p:cs) = seive (p:ps) (filter (\x -> 0 /= x `mod` p) cs)

result2 :: Integer
result2 = sum $ seive [] [2..2000000]
