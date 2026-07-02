-- src/Phase1_Foundations/02_BasicFunctions.hs
-- Phase 1: First Steps & Core Syntax
-- Concept: Defining simple functions, function application, common operators, conditional expressions.

module Phase1_Foundations.BasicFunctions where

-- Function Definition and Application

-- A function `add` that takes two integers and returns their sum.
-- Type signature: `add :: Int -> Int -> Int`
-- Read as: `add` takes an `Int`, returns a function that takes an `Int`, and that function returns an `Int`.
-- This is currying, a fundamental FP concept where functions take one argument at a time.
add :: Int -> Int -> Int
add x y = x + y

-- Example of application:
-- `add 5 3` evaluates to `8`

-- A function `multiply` that takes two floating-point numbers and returns their product.
-- Type signature: `multiply :: Float -> Float -> Float`
multiply :: Float -> Float -> Float
multiply x y = x * y

-- Common Operators
-- Haskell uses infix operators. Many are predefined.
-- `+`, `-`, `*`, `/` for arithmetic
-- `==`, `/=`, `<`, `<=`, `>`, `>=` for comparison
-- `&&`, `||` for boolean logic

-- Example: `isEven` function using the `mod` operator and comparison.
-- Type signature: `isEven :: Int -> Bool`
isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

-- Conditional Expressions (`if-then-else`)
-- In Haskell, `if-then-else` is an expression, not a statement. It must always have an `else` branch.

-- A function `maxOfTwo` that returns the larger of two integers.
-- Type signature: `maxOfTwo :: Int -> Int -> Int`
maxOfTwo :: Int -> Int -> Int
maxOfTwo a b = if a > b
               then a
               else b

-- Example:
-- `maxOfTwo 10 7` evaluates to `10`

-- A function `describeNumber` that returns a string describing an integer.
-- Type signature: `describeNumber :: Int -> String`
describeNumber :: Int -> String
describeNumber n = if n == 0
                   then "Zero"
                   else if n > 0
                        then "Positive"
                        else "Negative"

-- Basic Data Types (brief introduction, more in Phase 2)
-- Int: Integer numbers (e.g., 5, -10)
-- Float: Single-precision floating-point numbers (e.g., 3.14, -0.5)
-- Bool: Boolean values (True, False)
-- Char: Single characters (e.g., 'a', 'Z', '5')
-- String: List of characters (e.g., "hello", "Haskell") - conceptually `[Char]`

-- Example using Bool and String
isOldEnough :: Int -> Bool
isOldEnough age = age >= 18

farewellMessage :: String
farewellMessage = "Goodbye, world!"

-- To experiment in GHCi:
-- `stack ghci src/Phase1_Foundations/02_BasicFunctions.hs`
-- Then try: `add 10 20`, `isEven 4`, `maxOfTwo 5 8`, `describeNumber (-3)`
