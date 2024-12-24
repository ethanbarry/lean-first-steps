import Mathlib.Tactic

-- Demonstration
def Triangular (t : ℕ) : Prop := ∃n, 2 * t = n * (n + 1)
-- The definition avoids division of natural numbers, which is not guaranteed
-- to produce a natural result. It's equivalent to 0.5 * n * (n + 1), however.

example : Triangular 10 := by
  dsimp [Triangular]
  use 4

-- Exercise
def Square (s : ℕ) : Prop := ∃n, s = n^2

example : Square 25 := by
  dsimp [Square]
  use 5
  norm_num -- Required for exponentiation, I suppose...
