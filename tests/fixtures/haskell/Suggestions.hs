module Suggestions where

-- This file intentionally contains patterns that HLint will suggest improvements for.

-- HLint will suggest: use concatMap
joinWords :: [[String]] -> [String]
joinWords xss = concat (map id xss)

-- HLint will suggest: eta reduce
double :: [Int] -> [Int]
double xs = map (\x -> x * 2) xs
