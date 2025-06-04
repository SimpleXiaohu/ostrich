(set-logic QF_SLIA)
(declare-const text String)
(declare-const letters (Seq String))

(assert (= text "XyZabc123"))
(define-fun lowercase () RegLan (re.range "a" "z"))
(assert (= letters (str.match_all text lowercase)))

(assert (= (seq.nth letters 0) "y"))
(assert (= (seq.nth letters 1) "a"))
(assert (= (seq.nth letters 2) "b"))
(assert (= (seq.nth letters 3) "c"))

(check-sat)