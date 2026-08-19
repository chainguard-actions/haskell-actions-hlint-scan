-- A simple Haskell module with no HLint issues
module Hello (greet) where

-- | Greet someone by name.
greet :: String -> String
greet name = "Hello, " ++ name ++ "!"
