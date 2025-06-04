(declare-fun x () String)
(declare-fun i () Int)
(declare-fun a1 () (Seq String))

(assert (= "b" (seq.nth a1 i)))
(assert (< 3 i))
(assert (= a1 (str.split x "a")))



(check-sat)
(get-model)

