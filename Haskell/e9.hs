-- returns true for (x,y) if x, y, 1000-x-y is pythagorean triple
isPythagorean :: (Integral a) => (a, a) -> Bool
isPythagorean (x, y) = x^2 + y^2 == (1000 - x - y) ^ 2

-- filters for all pythagorean triples with sum 1000
pythTriples :: (Integral a) => [(a, a)]
pythTriples = filter isPythagorean [(x, y) | x <- [1..1000], y <- [1..1000], y < x]

pythProduct :: (Integral a) => (a, a) -> a
pythProduct (x, y) = x * y * (1000 - x -y)

result :: (Integral a) => a
result = pythProduct . head $ pythTriples
