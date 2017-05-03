-- Flatten a nested list structure.
-- We have to define a new data type, because lists in Haskell are homogeneous.

data NestedList a = Elem a | List [NestedList a]

nestedflatten :: NestedList a -> [a]
nestedflatten (List []) = []
nestedflatten (Elem a) = [a]
nestedflatten (List (x:xs)) = (nestedflatten x)++(nestedflatten (List xs))
