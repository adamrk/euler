module Euler
( isPrime
, subSequences
, divisors
) where

import Data.List

-- check primality by seeing if n is 0 mod x for some x in 1,...,sqrt n
isPrime :: (Integral a) => a -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime n = (minimum $ map (mod n) [2..(root n)]) /= 0
    where root = floor . sqrt . fromIntegral -- need to convert Integral to get sqrt

-- return a list of all length n subsequences of xs
subSequences :: Int -> [b] -> [[b]]
subSequences n xs = filter (\x -> length x == n) $ map (take n) $ tails xs

divisors :: Integer -> [Integer]
divisors 1 = []
divisors n = q:(divisors $ n `div` q)
    where q = smallestDivisor n

smallestDivisor :: Integer -> Integer
smallestDivisor n = head $ filter (\x -> 0 == n `mod` x) [2..n]
