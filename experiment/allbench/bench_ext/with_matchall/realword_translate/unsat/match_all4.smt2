(set-logic QF_SLIA)
(declare-const s String)
(declare-const matches (Seq String))

(assert (= s "abc"))
(define-fun lower_re () RegLan (re.range "a" "z"))
(assert (= matches (str.match_all s lower_re)))
(assert (= matches (as seq.empty (Seq String))))

(check-sat)