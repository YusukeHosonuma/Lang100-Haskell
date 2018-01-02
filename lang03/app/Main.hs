module Main where

import Lib
import Data.List

f :: String -> String
f = concat . map (show . length) . words

main :: IO ()
main = 
    putStrLn $ f "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
