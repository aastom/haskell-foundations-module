-- src/Phase1_Foundations/01_HelloWorld.hs
-- Phase 1: First Steps & Core Syntax
-- Concept: Introduction to GHCi, basic `main` function for executable programs, and simple printing.

module Phase1_Foundations.HelloWorld where

-- The `main` function is the entry point of any executable Haskell program.
-- Its type signature is `IO ()`, indicating that it performs an I/O action
-- and returns no meaningful value (represented by `()`, the unit type).
main :: IO ()
main = putStrLn "Hello, Haskell World!"

-- To run this in GHCi:
-- 1. Load the file: `stack ghci src/Phase1_Foundations/01_HelloWorld.hs`
-- 2. Run main: `main`
--
-- To run this as an executable via Stack:
-- `stack run 01_HelloWorld` (assuming `01_HelloWorld` is configured as an executable in package.yaml)

-- A simple pure function. It takes a String and returns a String.
-- This function is pure because it always returns the same output for the same input
-- and has no side effects (like printing to console or reading from a file).
greet :: String -> String
greet name = "Hello, " ++ name ++ "!"

-- You can test `greet` in GHCi after loading the file:
-- `greet "Alice"` should return `"Hello, Alice!"`
