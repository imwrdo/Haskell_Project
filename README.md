# Project Title: Haskell Equation Solver

## Overview

This project is a solution to a task from the "Programming Languages" course, designed to enhance programming skills across various languages. In this implementation, the task is tackled using Haskell.

## Task Description

Given a natural number `n`, the goal is to find a natural number `m` for which the number of possible solutions of the equation:

\[ \frac{1}{a} + \frac{1}{b} = \frac{1}{m} \]

where \(a\) and \(b\) are natural numbers, is greater than or equal to `n`.

### Example

For instance, if \(n = 3\), the solution would be \(m = 4\). This is because there are precisely three solutions to the equation:

1. \(a_1 = 5\) and \(b_1 = 20\): \(\frac{1}{5} + \frac{1}{20} = \frac{1}{4}\)
2. \(a_2 = 6\) and \(b_2 = 12\): \(\frac{1}{6} + \frac{1}{18} = \frac{1}{4}\)
3. \(a_3 = 8\) and \(b_3 = 8\): \(\frac{1}{8} + \frac{1}{8} = \frac{1}{4}\)

## Getting Started

### Prerequisites

Ensure that you have Haskell installed on your machine.

```bash
# Install Haskell on Linux
sudo apt-get install haskell-platform

# Install Haskell on macOS
brew install haskell-platform
