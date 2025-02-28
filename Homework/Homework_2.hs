-- Homework 2

-- 2.6.5
{-
ghci> f5 x = x > 100
ghci> f5 300
True
ghci> f5 50
False
-}


-- 2.6.6
{-
ghci> f6 x = 5 `mod` x
ghci> f6 2
1
-}

-- 2.6.7
{-
ghci> f7 x = 8 `div` x
ghci> f7 2
4
ghci> f7 3
2
-}


-- 2.6.8
{-
ghci> f8 x = 3 * x
ghci> f8 3
9
ghci> f8 1
3
-}


-- 2.7
module Triangle (trArea1, trArea2, trArea3) where
trArea1 base height = 0.5 * base * height
trArea2 a b c = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2
trArea3 a b angle = 0.5 * a * b * sin angle
{-
ghci> trArea1 6 4
12.0
ghci> trArea2 3 4 5
6.0
ghci> trArea3 5 7 (pi / 6)
8.749999999999998
-}


-- 3.1 Task 2
f'' :: Double -> Double
f'' x = case () of
  _ | x < -10 -> x*x
    | x <= 0  -> sin x
    | x < 5   -> x
    | True    -> undefined
{-
ghci> f'' (-12)
144.0
ghci> f'' (-pi)
-1.2246063538223773e-16
ghci> f'' 1
1.0
ghci> f'' 5
*** Exception: Prelude.undefined
-}

-- 3.2

-- https://en.wikipedia.org/wiki/Binomial_coefficient

{-
*Math> :t div
div :: Integral a => a -> a -> a
*Math> :t (/)
(/) :: Fractional a => a -> a -> a
*Math> 6 `div` 4
1
*Math> 6 / 4
1.5
*Math> (6 :: Int) `div` (4 :: Int)
1
*Math> (6 :: Int) / (4 :: Int)

<interactive>:6:1: error:
    * No instance for (Fractional Int) arising from a use of `/'
    * In the expression: (6 :: Int) / (4 :: Int)
      In an equation for `it': it = (6 :: Int) / (4 :: Int)
-}

factorial :: Integer -> Integer
factorial n | n == 0 = 1
            | n > 0  = n * factorial (n - 1)

binomialCoefficient k n | k == 0 && k <= n = 1
                        | k > 0 && k <= n = factorial n `div` (factorial k * factorial (n - k))
                        | otherwise = 0
