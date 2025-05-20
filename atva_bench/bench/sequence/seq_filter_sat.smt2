(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))


; filter all elements that contains "a" in the string
(assert (= a1 (seq.filter a2 (re.++ re.all (str.to_re "a") re.all))))
(assert (= a2 (seq.++ (seq.unit "a") (seq.unit "b") (seq.unit "a"))))
(assert (= 2 (seq.len a1)))

(check-sat)
(get-model)

