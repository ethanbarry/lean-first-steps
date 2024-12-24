import Mathlib.Tactic

-- Demonstration
example {x y : ℤ} (hxy : x = 5 ∧ y = x + 3) : y = 8 := by
obtain ⟨ ha , hb ⟩ := hxy
calc
  y = x + 3 := by rw [hb]
  _ = 5 + 3 := by rw [ha]
  _ = 8 := by norm_num

-- Exercise
example {x y : ℤ} (hxy : x ≥ 5 ∧ y = x + 3) : y ≥ 8 := by
obtain ⟨ hx , hy ⟩ := hxy
calc
  y = x + 3 := by rw [hy]
  _ ≥ 5 + 3 := by rel [hx]
  _ ≥ 8 := by norm_num
