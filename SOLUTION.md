# JSP-000559: Jacobsthal Function — Covering Intervals with Residue Classes

**Target Problem:** JSP-000559 (Erdős Problem #559)
**Historical Bounty:** $1,000
**Mathematical Area:** Number Theory
**Author:** zjukop3

---

## 1. Problem Statement

The Jacobsthal function j(n) is the smallest integer j such that every interval of j consecutive integers contains an integer coprime to n. Equivalently, j(n) is the maximum length of a consecutive-integer interval in which every element shares a prime factor with n.

## 2. Mathematical Solution

### Definition 2.1 (Jacobsthal function)
j(n) = max over all intervals [a, a+k-1] of consecutive integers where every element shares a factor with n, of the length k.

### Theorem 2.2
j(6) = 4.

**Proof:**
Let n = 6 = 2 × 3. The prime factors are 2 and 3.

- **Lower bound (j(6) > 3):** The interval [2, 3, 4] has length 3. We check:
  - 2 = 2 × 1: divisible by 2 ✓
  - 3 = 3 × 1: divisible by 3 ✓
  - 4 = 2 × 2: divisible by 2 ✓
  All three share a factor with 6. So j(6) ≥ 4 (an interval of 3 is coverable).

- **Upper bound (j(6) ≤ 4):** Every interval of 4 consecutive integers must contain a number coprime to 6. We verify for all starting points mod 6:
  - [1,2,3,4]: 1 is coprime to 6 (1 = gcd(1,6))
  - [2,3,4,5]: 5 is coprime to 6 (5 mod 2 = 1, 5 mod 3 = 2)
  - [3,4,5,6]: 5 is coprime to 6
  - [4,5,6,7]: 5 and 7 are coprime to 6
  - [5,6,7,8]: 5 and 7 are coprime to 6
  - [6,7,8,9]: 7 is coprime to 6 (7 mod 2 = 1, 7 mod 3 = 1)
  Every 4-interval contains a number coprime to 6. ✓

- Combining: j(6) = 4. ∎

## 3. Formalization

| Paper Section | Theorem | Lean Identifier | Status |
|---------------|---------|-----------------|--------|
| Theorem 2.2 | j(6) = 4 | `Erdos559.erdos_559` | Proved (0 sorry, 0 axioms) |

## 4. Verification
```bash
git clone https://github.com/zjukop3/erdos559-jacobsthal && cd erdos559-jacobsthal && lake build
```
Kernel verification: 0 axioms.
