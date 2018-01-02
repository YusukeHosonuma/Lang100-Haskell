module Main where

import Lib

f :: String -> String -> String
f x y = concat $ map (\(x, y) -> x : [y]) $ zip x y

main :: IO ()
main = 
    putStr $ f "パトカー" "タクシー"
