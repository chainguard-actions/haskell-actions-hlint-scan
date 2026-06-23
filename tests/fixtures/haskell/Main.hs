module Main where

-- A simple Haskell file for testing hlint scanning
main :: IO ()
main = do
  putStrLn "Hello, World!"
  let xs = [1, 2, 3] :: [Int]
  print (length xs)
