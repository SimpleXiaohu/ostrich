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



(declare-fun value2 () String)
(declare-fun key2 () String)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) (+ (str.indexof (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "M" 0) 1) (- (str.len (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)))))) (+ (str.indexof (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "M" 0) 1))) "M") 1 0) 0)))) (not (= (ite (str.contains (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "M") 1 0) 0))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "L") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "K") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "J") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))) "I") 1 0) 0)))) (not (= (ite (str.contains (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I") 1 0) 0))) (not (= (ite (str.contains value2 "I") 1 0) 0))) (not (not (= (ite (str.contains value2 "H") 1 0) 0)))) (not (not (= (ite (str.contains value2 "G") 1 0) 0)))) (not (not (= (ite (str.contains value2 "F") 1 0) 0)))) (not (not (= (ite (str.contains value2 "E") 1 0) 0)))) (not (not (= (ite (str.contains value2 "D") 1 0) 0)))) (not (not (= (ite (str.contains value2 "C") 1 0) 0)))) (not (not (= (ite (str.contains value2 "B") 1 0) 0)))) (not (not (= (ite (str.contains value2 "A") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\u{c}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\u{b}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\u{d}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\u{a}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) "\u{9}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 (- (str.len value2) 1)) " ") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\u{c}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\u{b}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\u{d}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\u{a}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) "\u{9}") 1 0) 0)))) (not (not (= (ite (= (str.at value2 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (= (ite (= (str.indexof value2 "=" 0) (- 1)) 1 0) 0))) (not (not (= (ite (not (= (str.indexof value2 "=" 0) (- 1))) 1 0) 0)))) (not (not (= (ite (str.contains value2 ",") 1 0) 0)))) (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (= (ite (= key2 "cache-control") 1 0) 0))) (not (= (ite (= key2 "cache-control") 1 0) 0))) (>= 0 0)) (>= (- (+ (str.indexof value2 "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof value2 "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof value2 "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= (+ (str.indexof (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "M" 0) 1) 0)) (>= (- (str.len (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)))))) (+ (str.indexof (str.++ (str.replace (str.substr value2 0 (- (+ (str.indexof value2 "I" 0) 1) 0)) "I" "i") (str.++ (str.replace (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) 0 (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) "I" "i") (str.substr (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1))))) "M" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof value2 "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof value2 "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof value2 "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof value2 "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)) (>= (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1) 0)) (>= (- (str.len (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)))) (+ (str.indexof (str.substr value2 (+ (str.indexof value2 "I" 0) 1) (- (str.len value2) (+ (str.indexof value2 "I" 0) 1))) "I" 0) 1)) 0)) (>= (+ (str.indexof value2 "I" 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "I" 0) 1)) 0)))
(check-sat)

(exit)
