(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))


; filter all elements that contains "^" in the string
(assert (= (seq.unit "a") (seq.at a1 3)))
(assert (= a1 (seq.filter a2 (re.++ re.all (str.to_re "a") re.all))))


(check-sat)
(get-model)

