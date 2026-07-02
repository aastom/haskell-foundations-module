-- src/Phase2_TypesAndErrors/01_TypeSignatures.hs
-- Phase 2: The Type System & Debugging
-- Concept: Introduction to strong static typing, type signatures, and type inference.

module Phase2_TypesAndErrors.TypeSignatures where

-- Strong Static Typing and Type Signatures

-- Haskell is a strongly, statically typed language. This means every expression
-- has a type, and this type is checked at compile time. This helps catch many
-- errors early and makes code more robust.

-- A type signature explicitly declares the type of a function or value.
-- It's good practice to write type signatures for all top-level definitions.

-- Example: A function that adds two integers.
-- `addInt :: Int -> Int -> Int`
-- Read as: `addInt` takes an `Int`, then takes another `Int`, and returns an `Int`.
addInt :: Int -> Int -> Int
addInt x y = x + y

-- Example: A function that checks if a number is positive.
-- `isPositive :: Int -> Bool`
-- Read as: `isPositive` takes an `Int` and returns a `Bool`.
isPositive :: Int -> Bool
isPositive n = n > 0

-- Example: A constant string value.
-- `greeting :: String`
greeting :: String
greeting = "Hello, Haskell!"

-- Type Inference

-- One of Haskell's powerful features is type inference. You don't always need
-- to write explicit type signatures; GHC (Glasgow Haskell Compiler) can often
-- figure out the types for you. However, providing them is good documentation
-- and helps the compiler catch your mistakes.

-- Example: `subtractInt` with inferred type.
-- GHC would infer `subtractInt :: Num a => a -> a -> a`
-- `Num a =>` means `a` must be a type that supports numeric operations.
subtractInt x y = x - y

-- Example: `firstChar` with inferred type.
-- GHC would infer `firstChar :: [Char] -> Char` or `firstChar :: String -> Char`
firstChar :: String -> Char
firstChar s = head s

-- Benefits of Type Signatures:
-- 1. Documentation: Clearly state what a function expects and what it returns.
-- 2. Compiler Help: Guide the compiler, especially in complex cases, and help it find errors.
-- 3. Safety: Prevent many runtime errors by catching type mismatches at compile time.
-- 4. Refactoring: Make refactoring easier by clearly defining interfaces.

-- Polymorphic Types (brief mention, more in type classes)

-- Some functions work with a variety of types. These are called polymorphic functions.
-- Example: `id` (identity function)
-- `id :: a -> a`
-- Read as: `id` takes a value of *any* type `a` and returns a value of the *same* type `a`.
id :: a -> a
id x = x

-- Example: `pair` function that combines two values into a tuple.
-- `pair :: a -> b -> (a, b)`
-- Read as: `pair` takes a value of type `a`, a value of type `b`, and returns a tuple `(a, b)`.
pair :: a -> b -> (a, b)
pair x y = (x, y)

-- To experiment in GHCi:
-- `stack ghci src/Phase2_TypesAndErrors/01_TypeSignatures.hs`
-- Then try:
-- `:t addInt` (to see its type)
-- `:t isPositive`
-- `:t subtractInt` (note the inferred polymorphic type)
-- `addInt 5 3`
-- `isPositive (-10)`
-- `:t id`
-- `:t pair`
