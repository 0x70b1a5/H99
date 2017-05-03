-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (rev x)
