(declare-fun x () String)
(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))
(declare-fun a3 () (Seq String))
(declare-fun i () Int)
(declare-fun j () Int)

(assert (= a1 (seq.write a2 j "bb")))
(assert (= a3 (seq.write a1 i "aa")))
(assert (not(= i j)))
(assert (= x (seq.join a3 "3")))
(assert (> 5 (str.len x)))







(check-sat)
(get-model)
