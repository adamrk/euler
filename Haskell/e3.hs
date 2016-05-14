smallestDivisor :: Integer -> Integer
smallestDivisor n = head $ filter (\x -> 0 == n `mod` x) [2..n]

divisors :: Integer -> [Integer]
divisors 1 = []
divisors n = q:(divisors $ n `div` q)
    where q = smallestDivisor n

result :: Integer
result = last $ divisors 600851475143
