(declare-fun x () String)
(declare-fun a1 () (Seq String))

(assert (= "a" (seq.nth a1 1)))
(assert (= a1 (str.split x "a")))



(check-sat)
(get-model)

