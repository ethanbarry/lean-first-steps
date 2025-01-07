import Mathlib.Tactic

-- Demonstration
example {a b : ℕ} (hab : a = 5 → b = 6) (hb : b = 7) : ¬ a = 5 := by
  by_contra g
  apply hab at g
  have hbx : ¬ b = 7 := by linarith
  contradiction

-- Exercise
example {a b : ℕ} (hab : a > 5 ↔ b = 6) (hb : b = 6) : ¬ a = 5 := by
  by_contra g
  have ha : a > 5 := by
    apply hab.mpr
    · calc
        b = 6 := by rw [hb]
        _ = 6 := by norm_num
  have hax : ¬ a = 5 := by
    apply ne_of_gt at ha
    exact ha
  contradiction

-- Second solution without contradiction, due to Daniel James:
-- https://leanprover.zulipchat.com/#narrow/channel/113489-new-members/topic/Would.20someone.20please.20tell.20me.20how.20I'd.20simplify.20this.20proof.3F/near/490617790
example {a b : ℕ} (hab : a > 5 ↔ b = 6) (hb : b = 6) : ¬ a = 5 := by
  have ha : a > 5 := hab.mpr hb
  exact ne_of_gt ha
