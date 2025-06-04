(set-logic QF_SLIA)

(declare-const txt String)
(declare-const matches (Seq String))

(assert (= txt "abc abc"))

; Match all occurrences of "abc"
(assert (= matches (str.match_all txt (str.to_re "abc"))))

; Now assert that no matches were found
(assert (= matches (as seq.empty (Seq String))))

(check-sat)