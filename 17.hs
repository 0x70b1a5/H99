-- Split a list into two parts; the length of the first part is given.

splitAtNth :: [a] -> Int -> ([a], [a])
splitAtNth xs n = (take n xs, drop n xs)
