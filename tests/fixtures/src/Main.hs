module Main where

import Data.List (nub)

-- A simple Haskell file for HLint scanning tests
main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5] :: [Int]
  let ys = nub xs
  print ys
  putStrLn "Hello, World!"

-- Function that HLint might suggest improvements for
redundantLambda :: [Int] -> [Int]
redundantLambda xs = map (\x -> x + 1) xs

-- Another simple function
double :: Int -> Int
double x = x * 2
