(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))
(define-fun rega () RegLan
  (re.++ re.all (str.to_re "a") re.all))

; filter all elements that contains "a" in the string
(assert (= a1 (seq.filter a2 rega)))
(assert (= a2 (seq.++ (seq.unit "a") (seq.unit "b") (seq.unit "a"))))
(assert (not (= 2 (seq.len a1))))

(check-sat)
(get-model)

