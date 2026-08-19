-- A simple Haskell file for HLint scanning tests
module Example where

-- This function uses a pattern that HLint might suggest improvements for
double :: Int -> Int
double x = x + x

-- A simple identity function
identity :: a -> a
identity x = x

-- A list operation
myList :: [Int]
myList = [1, 2, 3, 4, 5]
