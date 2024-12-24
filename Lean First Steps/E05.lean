import Mathlib.Tactic

-- Demonstration
example {a b : ℝ} (h1 : b = a^2) (h2 : a ≥ 2) : b ≥ 4 := by
  calc
    b = a^2 := by rw [h1]
    _ ≥ (2)^2 := by rel [h2]
    _ = 4 := by norm_num

-- Exercise
example {a b c : ℕ} (h1 : a < b) (h2 : b ≤ c) : a < c := by
  calc
    a < b := by rel [h1]
    _ ≤ c := by rel [h2]
