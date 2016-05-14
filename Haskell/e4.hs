-- makes a list of the digits of a number (reversed)

digits :: (Integral a) => a -> [a]
digits 0 = []
digits n =
    let r = n `mod` 10 -- last digit
    in r : (digits $ (n - r) `div` 10) -- recursively apply digits to the first digits

-- evaluates if x is a palindrome
isPalindrome :: (Integral a) => a -> Bool
isPalindrome x = (digits x) == (reverse $ digits x)

-- list of palindromes that are a product of two 3 digit numbels
palindromes :: [Int]
palindromes = filter isPalindrome [x * y | x <- [100..999], y <- [100..999]]

-- take maximum
result :: Int
result = maximum palindromes
