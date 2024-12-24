import Mathlib.Tactic

-- Demonstration
example {a b : ℤ} (hab : a = b + 1) (hb0 : b - 1 = 0) : a = 2 := by
  have h3: b = 1 := by linarith [hb0]
  calc
    a = b + 1 := by rw [hab]
    _ = 1 + 1 := by rw [h3]
    _ = 2 := by norm_num

-- Exercise
example {a b c : ℤ} (habc : a = b + c) (hb0 : b - 1 = 0) (hc2 : c + 1 = 2) : a = 2 := by
  have hb1 : b = 1 := by linarith [hb0]
  have hc1 : c = 1 := by linarith [hc2]
  calc
    a = b + c := by rw [habc]
    _ = 1 + 1 := by rw [hb1, hc1]
    _ = 2 := by norm_num
