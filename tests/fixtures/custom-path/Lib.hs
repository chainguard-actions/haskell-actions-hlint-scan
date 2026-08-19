module Lib where

-- | A simple addition function
add :: Int -> Int -> Int
add x y = x + y

-- | Greet someone by name
greet :: String -> String
greet name = "Hello, " ++ name ++ "!"
