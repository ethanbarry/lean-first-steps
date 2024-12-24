import Mathlib.Tactic

-- Demonstration
example : ∃n: ℕ, n^2 + 1 = 10 := by
  use 3
  norm_num -- Just apply the norm_num tactic to the current state.

-- Exercise
example : ∃n: ℕ, n ≥ 5 := by
  use 6
  norm_num
