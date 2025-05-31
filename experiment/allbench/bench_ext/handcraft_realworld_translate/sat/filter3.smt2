(set-logic QF_SLIA)
(declare-const data String)
(declare-const tokens (Seq String))
(declare-const filtered (Seq String))

(assert (= data "a, ,b,  ,c"))
(assert (= tokens (str.split data ",")))

(define-fun non_ws () RegLan (re.+ (re.union (re.range "!" "~"))))
(assert (= filtered (seq.filter tokens non_ws)))

(assert (= (seq.nth filtered 0) "a"))
(assert (= (seq.nth filtered 1) "b"))
(assert (= (seq.nth filtered 2) "c"))

(check-sat)