-- check primality by seeing if n is 0 mod x for some x in 1,...,sqrt n
isPrime :: Integer -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime n = (minimum $ map (mod n) [2..(root n)]) /= 0
    where root = floor . sqrt . fromInteger -- need to convert Integer to get sqrt

result :: Integer
result = last $ take 10001 $ filter isPrime [1..]
