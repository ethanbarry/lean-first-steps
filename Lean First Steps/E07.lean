import Mathlib.Tactic

-- Demonstration
example {x : ℝ} (hx : (x = 3) ∨ (x = -3)) : x^2 = 9 := by
  obtain ha | hb := hx
  · calc
    x^2 = (3)^2 := by rw [ha]
    _ = 9 := by norm_num
  · calc
    x^2 = (-3)^2 := by rw [hb]
    _ = 9 := by norm_num

-- Exercise
example {x : ℝ} (hx : (x = 1) ∨ (x = 2)) : x^2 - 3 * x + 2 = 0 := by
  obtain h1 | h2 := hx
  · calc
    x^2 - 3 * x + 2 = (1)^2 - 3 * (1) + 2 := by rw [h1]
    _ = 0 := by norm_num
  · calc
    x^2 - 3 * x + 2 = (2)^2 - 3 * (2) + 2 := by rw [h2]
    _ = 0 := by norm_num
