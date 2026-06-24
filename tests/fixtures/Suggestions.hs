module Suggestions where

-- This file has HLint suggestions:
-- HLint suggests: use map instead of list comprehension
doubles :: [Int] -> [Int]
doubles xs = [x * 2 | x <- xs]
