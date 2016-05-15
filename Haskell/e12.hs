import Data.List
import Euler

-- list of triangular numbers
triangleNumbers :: [Integer]
triangleNumbers = 1 : zipWith (+) [2..] triangleNumbers  

numberDivisors :: Integer -> Int
numberDivisors n = 
    let groupedDivisors = group $ divisors n -- prime divisors grouped
        exponents = map length groupedDivisors -- exponents in prime factorization
    in product $ map (+1) exponents -- Tau divisor function

result :: Integer
result = head . (take 1) $ filter (\x -> numberDivisors x > 500) triangleNumbers
