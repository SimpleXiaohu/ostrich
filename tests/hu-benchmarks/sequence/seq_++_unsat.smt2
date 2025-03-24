(declare-fun x () String)
(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))
(declare-fun a3 () (Seq String))

(assert (= a1 (seq.++ a2 a3)))
(assert (< 3 (seq.len a1)))
(assert (= (seq.unit "abcd") (seq.at a1 3)))
(assert (= x (str.join a1 "a")))
(assert (< (str.len x) 7))



(check-sat)
(get-model)
