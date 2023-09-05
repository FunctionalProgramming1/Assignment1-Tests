-- DO NOT MODIFY THIS FILE

import Assignment1

-- if the following line causes an error, type (at the terminal prompt):
--   cabal update
--   cabal install QuickCheck

import Test.QuickCheck -- see https://hackage.haskell.org/package/QuickCheck for
                       -- documentation if you want to write your own tests

-- Tests

-- Exercise 1

_ = poem :: String -> Integer -> String
-- no automated tests (no implementation required)

-- Exercise 2

_ = f1 :: Integer -> Integer
_ = f2 :: Integer -> Integer -> Integer
_ = f3 :: Integer -> (Integer,Integer)
_ = f4 :: (Integer,Integer) -> Integer
_ = f5 :: Integer -> Double -> String -> String
_ = f6 :: Integer -> String -> String -> Integer -> (Integer,String)

prop_Exercise2_f1 x = f1 x == f1 x
prop_Exercise2_f2 x y = f2 x y == f2 x y
prop_Exercise2_f3 x = f3 x == f3 x
prop_Exercise2_f4 (x,y) = f4 (x,y) == f4 (x,y)
prop_Exercise2_f5 x d s = f5 x d s == f5 x d s
prop_Exercise2_f6 x s t y = f6 x s t y == f6 x s t y

-- Exercise 3

prop_Exercise3 = answer31 && answer32 && not answer33 && not answer34 && answer35

-- Exercise 4

prop_Exercise4 = answer41 && answer42 && answer43 && not answer44 && answer45

-- Exercise 5

_ = isPalindrome :: String -> Bool

prop_Exercise5 s = isPalindrome s == (s == reverse s)

-- Exercise 6

_ = fizzBuzz :: Integer -> String

prop_Exercise6 n = (case fizzBuzz n of
                      "fizz"     -> n `mod` 3 == 0 && n `mod` 5 /= 0
                      "buzz"     -> n `mod` 3 /= 0 && n `mod` 5 == 0
                      "fizzbuzz" -> n `mod` 3 == 0 && n `mod` 5 == 0
                      s | s == show n -> n `mod` 3 /= 0 && n `mod` 5 /= 0
                      otherwise  -> False)

-- main

main = do
  putStrLn "Exercise 1: OK (no automated tests)."
  putStrLn "Exercise 2, function f1:"
  quickCheck prop_Exercise2_f1
  putStrLn "Exercise 2, function f2:"
  quickCheck prop_Exercise2_f2
  putStrLn "Exercise 2, function f3:"
  quickCheck prop_Exercise2_f3
  putStrLn "Exercise 2, function f4:"
  quickCheck prop_Exercise2_f4
  putStrLn "Exercise 2, function f5:"
  quickCheck prop_Exercise2_f5
  putStrLn "Exercise 2, function f5:"
  quickCheck prop_Exercise2_f6
  putStrLn "Exercise 3:"
  quickCheck prop_Exercise3
  putStrLn "Exercise 4:"
  quickCheck prop_Exercise4
  putStrLn "Exercise 5:"
  quickCheck prop_Exercise5
  putStrLn "Exercise 6:"
  quickCheck prop_Exercise6
