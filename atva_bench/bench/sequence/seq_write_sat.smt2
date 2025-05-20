(declare-fun x () String)
(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))
(declare-fun a3 () (Seq String))
(declare-fun i () Int)
(declare-fun j () Int)

(assert (= a1 (seq.write a2 1 "bb")))
(assert (= a3 (seq.write a1 i "aa")))
(assert (= x (seq.join a3 "3")))
(assert (> 4 (str.len x)))





(check-sat)
(get-model)
