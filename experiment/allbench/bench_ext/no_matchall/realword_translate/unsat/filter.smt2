(set-logic QF_SLIA)

(declare-const input (Seq String))
(declare-const filtered (Seq String))

; Define a regex that matches only the string "abc"
(define-fun abc_only () RegLan (str.to_re "abc"))

(assert (= input (seq.unit "abc")))

; Filter with regex, should return sequence containing "abc"
(assert (= filtered (seq.filter input abc_only)))

; Now assert filtered is the empty sequence
(assert (= filtered (as seq.empty (Seq String))))

(check-sat)