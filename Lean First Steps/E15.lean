import Mathlib.Tactic

-- Demonstration
example {p q : ℚ} (hpq : (p - 1) * (q - 2) = 0) : p = 1 ∨ q = 2 := by
  apply mul_eq_zero.mp at hpq
  obtain hp | hq := hpq
  left
  · linarith
  right
  · linarith

-- Exercise
example {p q : ℚ} (hpq : p - 1 ≠ 0 ∧ q - 2 ≠ 0) : (p - 1) * (q - 2) ≠ 0 := by
  apply mul_ne_zero_iff.mpr at hpq
  exact hpq
