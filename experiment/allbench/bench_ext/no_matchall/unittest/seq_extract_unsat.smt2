(declare-fun x () String)
(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))
(declare-fun i () Int)
(declare-fun j () Int)

(assert (= a1 (seq.extract a2 i j)))
(assert (< 1 i))
(assert (< (+ i j) (seq.len a2)))
(assert (< 1 j))
(assert (= a2 (seq.++ (seq.unit "1") (seq.unit "2") (seq.unit "3") (seq.unit "4"))))
(assert (= x (seq.join a1 "3")))
(assert (< (str.len x) 3))




(check-sat)
(get-model)
