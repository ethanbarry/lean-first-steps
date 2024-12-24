import Mathlib.Tactic

-- Demonstration
example : Odd (13: ℤ) := by
  dsimp [Odd]
  use 6
  norm_num

-- Exercise
example : Even (14: ℤ) := by
  dsimp [Even]
  use 7
  norm_num
