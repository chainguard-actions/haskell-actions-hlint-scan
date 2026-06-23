module Main where

import Data.List (nub)

-- This has an HLint suggestion: use 'null' instead of 'length xs == 0'
isEmpty :: [a] -> Bool
isEmpty xs = length xs == 0

main :: IO ()
main = do
  let xs = [1, 2, 3] :: [Int]
  print (isEmpty xs)
  print (nub xs)
