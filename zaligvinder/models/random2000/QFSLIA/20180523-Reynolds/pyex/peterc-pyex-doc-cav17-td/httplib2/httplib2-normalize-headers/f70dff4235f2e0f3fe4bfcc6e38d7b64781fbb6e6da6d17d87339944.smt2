(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2018-04-25
Generator: PyEx, converted to v2.6 by CVC4
Application: Symbolic Execution of Python Programs
Target solver: CVC4, Z3, Z3str2
Publications: "Scaling Up DPLL(T) String Solvers Using Context-Dependent Simplification" by A. Reynolds, M. Woo, C. Barrett, D. Brumley, T. Liang, and C. Tinelli, CAV 2017.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)



(declare-fun key2 () String)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.++ (str.replace (str.substr (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) 0 (- (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0)) "O" "o") (str.substr (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1)))) "R") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) 0 (- (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0)) "O" "o") (str.substr (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1)))) "Q") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) 0 (- (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0)) "O" "o") (str.substr (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1)))) "P") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1))) "O") 1 0) 0)))) (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O") 1 0) 0))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "N") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "M") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "L") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "K") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "J") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "I") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "H") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "G") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "F") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "E") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "D") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "C") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "B") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))) "A") 1 0) 0)))) (not (= (ite (str.contains key2 "A") 1 0) 0))) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0)) (>= (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0)) (>= (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0)) (>= (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1) 0)) (>= (- (str.len (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr key2 0 (- (+ (str.indexof key2 "A" 0) 1) 0)) "A" "a") (str.substr key2 (+ (str.indexof key2 "A" 0) 1) (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)))) "O" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key2 "A" 0) 1) 0) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)) (>= (+ (str.indexof key2 "A" 0) 1) 0)) (>= (- (str.len key2) (+ (str.indexof key2 "A" 0) 1)) 0)))
(check-sat)

(exit)
