import Mathlib.Tactic

-- Demonstration
example {x y : ℝ} (h1 : y = x + 4) (h2 : x = 3) : y = 7 := by
  calc
    y = x + 4 := by rw [h1]
    _ = 3 + 4 := by rw [h2]
    _ = 7 := by norm_num

-- Exercise
example {x y : ℝ} (hxy : y = x^2 - 9) (hx : x = -3) : y = 0 := by
  calc
    y = x^2 - 9 := by rw [hxy]
    _ = (-3)^2 - 9 := by rw [hx]
    _ = 0 := by norm_num
