module Example where

-- This file intentionally has hlint suggestions
-- Using (length xs == 0) instead of (null xs) is a common hlint suggestion
isEmpty :: [a] -> Bool
isEmpty xs = length xs == 0

-- Using explicit lambda instead of eta-reduction
double :: [Int] -> [Int]
double xs = map (\x -> x * 2) xs
