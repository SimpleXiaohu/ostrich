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
(declare-fun key1 () String)
(declare-fun value1 () String)
(declare-fun value2 () String)
(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (= (str.at (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1))) 0) "\u{a}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1))) 0) "\u{9}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1))) 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1)))) 0) 1 0) 0)))) (not (= (ite (= (str.indexof (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1))) "=" 0) (- 1)) 1 0) 0))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) 0 (- (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1) 0)) "Y" "y") (str.substr (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1)))) "Z") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1))) "Y") 1 0) 0)))) (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y") 1 0) 0))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "X") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "W") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "V") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "U") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "T") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "S") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "R") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Q") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "P") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "O") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "N") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "M") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "L") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "K") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "J") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "I") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "H") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "G") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "F") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "E") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "D") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "C") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "B") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "A") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) 1)) "\u{c}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) 1)) "\u{b}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) 1)) "\u{d}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) 1)) "\u{a}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) 1)) "\u{9}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) 1)) " ") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) 0) "\u{c}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) 0) "\u{b}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) 0) "\u{d}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) 0) "\u{a}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) 0) "\u{9}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) 0) 1 0) 0)))) (not (= (ite (= (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "=" 0) (- 1)) 1 0) 0))) (not (not (= (ite (not (= (str.indexof (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1))) "=" 0) (- 1))) 1 0) 0)))) (not (not (= (ite (not (= (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "=" 0) (- 1))) 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1))) ",") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr value1 (+ (str.indexof value1 "," 0) 1) (- (str.len value1) (+ (str.indexof value1 "," 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains value1 ",") 1 0) 0))) (not (not (= (ite (= (str.len value1) 0) 1 0) 0)))) (not (= (ite (= key1 "cache-control") 1 0) 0))) (not (= (ite (= key1 "cache-control") 1 0) 0))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "Z") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "Y") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "X") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "W") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "V") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "U") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "T") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "S") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "R") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "Q") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "P") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "O") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "N") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "M") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "L") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "K") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "J") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "I") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "H") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "G") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "F") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "E") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "D") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "C") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "B") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr value2 1 (- (str.len value2) 1)) "A") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) (- (str.len (str.substr value2 1 (- (str.len value2) 1))) 1)) "\u{c}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) (- (str.len (str.substr value2 1 (- (str.len value2) 1))) 1)) "\u{b}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) (- (str.len (str.substr value2 1 (- (str.len value2) 1))) 1)) "\u{d}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) (- (str.len (str.substr value2 1 (- (str.len value2) 1))) 1)) "\u{a}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) (- (str.len (str.substr value2 1 (- (str.len value2) 1))) 1)) "\u{9}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) (- (str.len (str.substr value2 1 (- (str.len value2) 1))) 1)) " ") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) 0) "\u{c}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) 0) "\u{b}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) 0) "\u{d}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) 0) "\u{a}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) 0) "\u{9}") 1 0) 0)))) (not (not (= (ite (= (str.at (str.substr value2 1 (- (str.len value2) 1)) 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr value2 1 (- (str.len value2) 1))) 0) 1 0) 0)))) (not (= (ite (= (str.at value2 0) " ") 1 0) 0))) (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (= (ite (= (str.indexof value2 "=" 0) (- 1)) 1 0) 0))) (not (not (= (ite (not (= (str.indexof value2 "=" 0) (- 1))) 1 0) 0)))) (not (not (= (ite (str.contains value2 ",") 1 0) 0)))) (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (= (ite (= key2 "cache-control") 1 0) 0))) (not (= (ite (= key2 "cache-control") 1 0) 0))) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1) 0)) (>= (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1)) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1) 0)) (>= (- (str.len (str.substr value1 0 (- (str.indexof value1 "," 0) 0))) (+ (str.indexof (str.substr value1 0 (- (str.indexof value1 "," 0) 0)) "Y" 0) 1)) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= 0 0)) (>= (- (str.indexof value1 "," 0) 0) 0)) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= (+ (str.indexof value1 "," 0) 1) 0)) (>= (- (str.len value1) (+ (str.indexof value1 "," 0) 1)) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)) (>= 1 0)) (>= (- (str.len value2) 1) 0)))
(check-sat)

(exit)
