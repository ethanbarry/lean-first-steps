import Mathlib.Tactic

-- Demonstration
example {x : ℤ} (hx : x = -1) : x^2 = 1 ∨ x^3 = 1 := by
left
calc
  x^2 = (-1)^2 := by rw [hx] -- This is sufficient; Lean can infer the rest.

-- Exercise
example {x : ℤ} (hx : x = -1) : x = 1 ∨ x^2 = 1 ∨ x^3 = 1 := by
right -- In a disjunction, "left" and "right" function like LISP's CAR and CDR
      -- functions. We need the left item of the right tail, i.e. the center
      -- proposition that x^2 = 1. The others are incorrect.
left
calc
  x^2 = (-1)^2 := by rw [hx] -- Again, Lean can infer everything from here.
