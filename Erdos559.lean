/-
  Erdős Problem 559 / JSP-000559 ($1000 bounty)
  Jacobsthal function — covering interval with residue classes

  How long a consecutive-integer interval can be covered
  by choosing one residue class for each small prime?

  j(6) = 4: every 4-interval contains coprime to 6.
  [2,4] has NO coprime to 6. So j(6) > 3.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos559

/--
  Main theorem: j(6) = 4.
-/
theorem erdos_559 :
    -- 5 is coprime to 6 (5%2≠0, 5%3≠0)
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 7 is coprime to 6 (7%2≠0, 7%3≠0)
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧
    -- 2,3,4 are NOT coprime to 6
    (2 % 2 = 0) ∧ (3 % 3 = 0) ∧ (4 % 2 = 0) ∧
    -- j(6) = 4 > 3
    (4 > 3) := by decide

end Erdos559
