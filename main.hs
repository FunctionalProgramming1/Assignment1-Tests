-- DO NOT MODIFY THIS FILE

import Assignment1

-- if the following line causes an error, type (at the terminal prompt):
--   cabal update
--   cabal install QuickCheck

import Test.QuickCheck -- see https://hackage.haskell.org/package/QuickCheck for
                       -- documentation if you want to write your own tests

-- Tests

-- Exercise 1

_ = f1 :: Integer -> Integer
_ = f2 :: Integer -> Integer -> Integer
_ = f3 :: Integer -> (Integer,Integer)
_ = f4 :: (Integer,Integer) -> Integer
_ = f5 :: Integer -> Double -> String -> String
_ = f6 :: Integer -> String -> String -> Integer -> (Integer,String)

prop_Exercise1_f1 x = f1 x == f1 x
prop_Exercise1_f2 x y = f2 x y == f2 x y
prop_Exercise1_f3 x = f3 x == f3 x
prop_Exercise1_f4 (x,y) = f4 (x,y) == f4 (x,y)
prop_Exercise1_f5 x d s = f5 x d s == f5 x d s
prop_Exercise1_f6 x s t y = f6 x s t y == f6 x s t y

-- Exercise 2

prop_Exercise2 = answer21 && answer22 && not answer23 && not answer24 && answer25

-- Exercise 3

prop_Exercise3 = answer31 && answer32 && answer33 && not answer34 && answer35

-- Exercise 4

_ = isPalindrome :: String -> Bool

prop_Exercise4 s = isPalindrome s == (s == reverse s)

-- main

main = do
  putStrLn "Exercise 1, function f1:"
  quickCheck prop_Exercise1_f1
  putStrLn "Exercise 1, function f2:"
  quickCheck prop_Exercise1_f2
  putStrLn "Exercise 1, function f3:"
  quickCheck prop_Exercise1_f3
  putStrLn "Exercise 1, function f4:"
  quickCheck prop_Exercise1_f4
  putStrLn "Exercise 1, function f5:"
  quickCheck prop_Exercise1_f5
  putStrLn "Exercise 1, function f5:"
  quickCheck prop_Exercise1_f6
  putStrLn "Exercise 2:"
  quickCheck prop_Exercise2
  putStrLn "Exercise 3:"
  quickCheck prop_Exercise3
  putStrLn "Exercise 4:"
  quickCheck prop_Exercise4
