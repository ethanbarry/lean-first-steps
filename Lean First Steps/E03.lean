import Mathlib.Tactic

-- Demonstration
example {x y z c : ℝ} (h1 : z = y^2) (h2 : y = x + c) : z = (x + c)^2 := by
  calc
    z = y^2 := by rw [h1]
    _ = (x + c)^2 := by rw [h2]


-- Exercise
example {x y z : ℝ} (hxy : x = y) (hyz : y = z) : x = z := by
  calc
    x = y := by rw [hxy]
    _ = z := by rw [hyz]
