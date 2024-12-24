import Mathlib.Tactic

-- Demonstration
example {n : ℕ} (hn : n < 5) : n ≠ 5 := by
  apply ne_of_lt -- We're applying a lemma. The definition in Mathlib is this:
                 -- ∀ {α : Type} [inst : Preorder α] {a b : α}, a < b → a ≠ b
                 -- Definitely reminds me of Rust's trait system, or something
                 -- out of Haskell or ML.
  exact hn -- And now we've changed the goal, by the lemma, to be our exact hypothesis!

-- Exercise
example {n : ℕ} (hn : n > 5) : n ≠ 5 := by
  apply ne_of_gt -- ∀ {α : Type} [inst : Preorder α] {a b : α}, b < a → a ≠ b
  exact hn
