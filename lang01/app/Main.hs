module Main where

import Lib

f :: String -> String
f s = [c | (n, c) <- zip [1..] s, odd n]

main :: IO ()
main = 
    putStr $ f "パタトクカシー"
