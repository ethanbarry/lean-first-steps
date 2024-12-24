import Mathlib.Tactic

-- Demonstration
example {n : ℕ} (hn : n < 5) : n ≠ 5 := by
  apply ne_of_lt at hn -- Alter the hypothesis instead of the goal.
  exact hn

-- Exercise
example {n : ℕ} (hn : n > 5) : n ≠ 5 := by
  apply ne_of_gt at hn -- Ditto.
  exact hn
