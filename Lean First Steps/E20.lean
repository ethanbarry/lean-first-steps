import Mathlib.Tactic

-- Demonstration
example {P : Prop} : ¬ (¬ P) → P := by
  intro g
  by_cases h : P
  · exact h
  · contradiction

-- Exercise
example {P : Prop} : P → ¬ (¬ P) := by
  intro g
  by_cases h : ¬ P
  · contradiction -- g : P ∧ h : ¬P is a contradiction.
  · exact h       -- h : ¬¬P is exactly what we want.
