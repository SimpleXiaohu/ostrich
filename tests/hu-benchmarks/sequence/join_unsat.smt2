(declare-fun x () String)
(declare-fun i () Int)
(declare-fun a1 () (Seq String))

(assert (= (seq.unit "abcd") (seq.at a1 i)))
(assert (< 3 i))
(assert (= x (str.join a1 "a")))
(assert (> 7 (str.len x)))


(check-sat)
(get-model)

