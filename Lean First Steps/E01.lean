import Mathlib.Tactic

-- Demonstration
example {a : ℕ} (h1 : a = 4) : a > 1 := by
    calc
      a = 4 := by rw [h1]
      _ > 1 := by norm_num

-- Exercise
example {a : ℕ} (h1 : a = 4) : a < 10 := by
    calc
      a = 4 := by rw [h1]
      _ < 10 := by norm_num
