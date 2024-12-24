import Mathlib.Tactic

-- Demonstration
lemma Nat.le_or_succ_le (a b : ℕ): a ≤ b ∨ b + 1 ≤ a := by
  rw [Nat.add_one_le_iff]
  exact le_or_lt a b

example {c : ℕ} : c ≤ 2 ∨ 3 ≤ c := by
  exact Nat.le_or_succ_le c 2

-- Exercise
lemma Int.le_or_succ_le (a b : ℤ): a ≤ b ∨ b + 1 ≤ a := by
  rw [Int.add_one_le_iff]
  exact le_or_lt a b

example {c : ℤ} : c ≤ -5 ∨ -4 ≤ c := by
  exact Int.le_or_succ_le c (-5: ℤ)
  -- Applied our lemma exactly, using c as a and the integer -5 as b,
  -- proving that either c is ≤ -5, or c is ≥ -4.
