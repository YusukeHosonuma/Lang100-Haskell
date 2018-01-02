module Main where

import Lib
import qualified Data.Map as Map
import Data.List

s = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

ns :: [Int]
ns  = [1, 5, 6, 8, 9, 15, 16, 19]

ns' = filterNotIn ns [1..n]
    where
        n = (length . words) s

filterNotIn :: (Eq a) => [a] -> [a] -> [a]
filterNotIn xs ys = filter (not . flip elem xs) ys

zipByIdx :: [a] -> [Int] -> [(a, Int)]
zipByIdx xs ns = filter (\(x, n) -> n `elem` ns) $ zip xs [1..]

f :: String -> Map.Map String Int
f s = Map.fromList $ ws1 ++ ws2
    where
        ws1 = zipByIdx (map (take 1) ws) ns
        ws2 = zipByIdx (map (take 2) ws) ns'
        ws  = words s

main :: IO ()
main = do
    putStrLn $ show $ f s
-- fromList [
--     ("Al",13),
--     ("Ar",18),
--     ("B",5),
--     ("Be",4),
--     ("C",6),
--     ("Ca",20),
--     ("Cl",17),
--     ("F",9),
--     ("H",1),
--     ("He",2),
--     ("K",19),
--     ("Li",3),
--     ("Mi",12),
--     ("Na",11),
--     ("Ne",10),
--     ("No",7),
--     ("O",8),
--     ("P",15),
--     ("S",16),
--     ("Si",14)]
