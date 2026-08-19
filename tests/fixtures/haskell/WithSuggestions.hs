-- A Haskell module with HLint suggestions
module WithSuggestions (doubles) where

-- | Double each element in a list.
-- HLint may suggest using 'map' instead of list comprehension.
doubles :: [Int] -> [Int]
doubles xs = [x * 2 | x <- xs]
