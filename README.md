# Foundational Haskell Learning Module

This module provides a comprehensive introduction to Haskell, focusing on core functional programming concepts, syntax, and practical application. It is designed to equip beginners with a solid understanding, proactively addressing common pain points like type error debugging, lazy evaluation, and the `IO` Monad.

## Overview

Haskell is a purely functional programming language known for its strong static type system, lazy evaluation, and elegant syntax. This module guides learners through its foundational elements, emphasizing hands-on coding and practical problem-solving.

## Architecture

The module is structured progressively into four phases, each building upon the previous one. This modular approach allows learners to grasp concepts step-by-step and reinforces understanding through executable code examples.

```mermaid
graph TD
    A[Start Learning] --> B{Phase 1: First Steps & Core Syntax};
    B --> C{Phase 2: The Type System & Debugging};
    C --> D{Phase 3: Core Functional Patterns & HOF};
    D --> E{Phase 4: Lazy Evaluation & I/O};
    E --> F[End Module / Further Learning];

    B -- Covers --> B1[FP Intro, GHCi, Basic Syntax, Data Types, Bindings];
    C -- Covers --> C1[Strong Typing, Type Inference, Common/Custom Types, Type Classes];
    C -- Crucial for --> C2[Practical Debugging: Common Type Errors];
    D -- Focuses on --> D1[Recursion, Pattern Matching, HOF (map, filter, fold), Lambdas, Composition];
    E -- Explains --> E1[Lazy Evaluation Benefits];
    E -- Demystifies --> E2[IO Monad, do Notation, Basic I/O];
```

## Concepts Covered

*   **Core Functional Programming:** Purity, immutability, first-class functions.
*   **Haskell Basics:** GHCi, `main`, function definition, operators, conditionals.
*   **Data Types:** `Int`, `Float`, `Bool`, `Char`, `String`, Lists, Tuples, `Maybe`, `Either`.
*   **Type System:** Type signatures, inference, custom data types (`data`, `newtype`), `Eq` and `Show` type classes.
*   **Debugging:** Strategies for interpreting and fixing common type errors.
*   **Programming Patterns:** Recursion, pattern matching, `let`/`where` bindings.
*   **Higher-Order Functions:** `map`, `filter`, `fold`, anonymous functions, function composition.
*   **Lazy Evaluation:** Understanding its practical benefits (e.g., infinite lists).
*   **I/O Monad:** The `IO` type, `do` notation, `putStrLn`, `getLine`, `print`, `readLn`.

## How to Run

This project uses `Stack` for consistent environment setup and build management.

1.  **Install GHCup:** If you don't have Haskell installed, use GHCup to install GHC and Stack. Follow instructions at [https://www.haskell.org/ghcup/](https://www.haskell.org/ghcup/).
2.  **Clone the repository:**
    ```bash
    git clone https://github.com/aastom/haskell-foundations-module.git
    cd haskell-foundations-module
    ```
3.  **Build the project:**
    ```bash
    stack build
    ```
    This will download necessary dependencies and compile the project.
4.  **Run examples:**
    *   To run a specific executable (e.g., `01_HelloWorld.hs` which contains a `main` function):
        ```bash
        stack run 01_HelloWorld
        ```
        (Note: You might need to specify the full path if there are multiple executables with the same name across different `src` subdirectories, or run from `ghci`.)
    *   To load a file into GHCi for interactive exploration:
        ```bash
        stack ghci src/Phase1_Foundations/01_HelloWorld.hs
        ```
        Once in GHCi, you can call functions defined in the loaded file, e.g., `main`.
    *   Some files might not have a `main` function but contain pure functions. You can load them into GHCi and experiment.

## References

*   **Haskell.org:** The official Haskell website - [https://www.haskell.org/](https://www.haskell.org/)
*   **Learn You a Haskell for Great Good!:** An excellent online book for beginners - [http://learnyouahaskell.com/](http://learnyouahaskell.com/)
*   **Haskell Programming from First Principles:** A comprehensive resource for deeper understanding - [http://haskellbook.com/](http://haskellbook.com/)
*   **GHCup:** The recommended Haskell installer - [https://www.haskell.org/ghcup/](https://www.haskell.org/ghcup/)
*   **Stack:** The build tool used in this project - [https://docs.haskellstack.org/en/stable/README/](https://docs.haskellstack.org/en/stable/README/)

## 📚 Documentation

All project documentation is published to Google Drive and cross-linked with this repository.

*   **Drive Folder:** [Foundational Haskell Learning Module — R&D Lab](https://drive.google.com/drive/folders/1SOWaVTbvIcHdS1ILDT9ARYTF7p3_47Tl)
*   **Documentation Bundle:** [Foundational Haskell Learning Module - Documentation Bundle](https://docs.google.com/document/d/1UgW9wcUHdKxeqwtqHW0JTPyPehZcSaGKJ-gUUmPvgUA/edit?usp=drivesdk)
*   **Learning Roadmap:** [Foundational Haskell Learning Module - Learning Roadmap](https://docs.google.com/document/d/1hxWrTo1jAq8zq-4XK8B0tkXdjWNfLEagJGIYrNO85F4/edit?usp=drivesdk)
