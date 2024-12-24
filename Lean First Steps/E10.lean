import Mathlib.Tactic

-- Demonstration
example {x : ℤ} (h : x = -1) : x^2 = 1 ∧ x^3 = -1 := by
  constructor
  · calc
      x^2 = (-1)^2 := by rw [h]
      _ = 1 := by norm_num -- Lean seems to require this line in constructor. IDK why.
  · calc
      x^3 = (-1)^3 := by rw [h]
      _ = -1 := by norm_num

-- Exercise
example {x : ℤ} (hx : x = -1) : x^3 = -1 ∧ x^4 = 1 ∧ x^5 = -1 := by
  constructor -- Constructor is just like LISP's CONS function!
  · calc
      x^3 = (-1)^3 := by rw [hx]
      _ = -1 := by norm_num
  · constructor
    · calc
        x^4 = (-1)^4 := by rw [hx]
        _ = 1 := by norm_num
    · calc
        x^5 = (-1)^5 := by rw [hx]
        _ = -1 := by norm_num
