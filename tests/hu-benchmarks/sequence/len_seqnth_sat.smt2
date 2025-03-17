(declare-fun x () String)
(declare-fun a1 () (Seq String))

(assert (= 3 (seq.len a1)))
(assert (= a1 (str.split x "a")))



(check-sat)
(get-model)

