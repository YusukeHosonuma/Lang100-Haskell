module Main where

import Lib

f :: String -> String -> String
f x y = concatMap (\(x, y) -> x : [y]) $ zip x y

main :: IO ()
main =
    putStr $ f "パトカー" "タクシー"
