(declare-fun x () String)
(declare-fun a1 () (Seq String))

(assert (= a1 (seq.++ (seq.unit "abcd") (seq.unit "abcd"))))
(assert (= x (seq.join a1 "a")))
(assert (= (x "abcdaabcd")))


(check-sat)
(get-model)
