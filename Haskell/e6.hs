-- square of the sum from 1 to n
squareSum :: Integer -> Integer
squareSum n = (sum [1..n]) ^ 2

-- sum of squares from 1 to n
sumSquares :: Integer -> Integer
sumSquares n = sum $ map (^2) [1..n]

result :: Integer
result = squareSum 100 - sumSquares 100
