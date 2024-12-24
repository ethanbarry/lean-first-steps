import Mathlib.Tactic

-- Demonstration
lemma Nat.le_or_succ_le (a b : ℕ): a ≤ b ∨ b + 1 ≤ a := by
  rw [Nat.add_one_le_iff]
  exact le_or_lt a b

example {n : ℕ} : n^2 ≠ 7 := by
  have h := Nat.le_or_succ_le n 2
  obtain hl | hr := h
  · apply ne_of_lt
    calc
      n^2 ≤ 2^2 := by rel [hl]
      _ < 7 := by norm_num
  · apply ne_of_gt
    calc
      n^2 ≥ 3^2 := by rel [hr]
      _ > 7 := by norm_num

-- Exercise
example {n : ℕ} : n^3 ≠ 10 := by
  have h := Nat.le_or_succ_le n 2
  obtain hl | hr := h
  · apply ne_of_lt
    calc
      n^3 ≤ 2^3 := by rel [hl]
      _ < 10 := by norm_num
  · apply ne_of_gt
    calc
      n^3 ≥ 3^3 := by rel [hr]
      _ > 10 := by norm_num
