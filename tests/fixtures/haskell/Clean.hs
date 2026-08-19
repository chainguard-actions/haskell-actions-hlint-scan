module Clean where

-- A simple, clean Haskell module with no HLint suggestions.

greet :: String -> String
greet name = "Hello, " ++ name ++ "!"

add :: Int -> Int -> Int
add x y = x + y
