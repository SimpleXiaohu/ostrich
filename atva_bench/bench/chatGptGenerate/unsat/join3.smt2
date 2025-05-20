(set-logic QF_SLIA)
(declare-const input String)
(declare-const split (Seq String))
(declare-const filtered (Seq String))
(declare-const output String)

(assert (= input "cat,dog,,mouse"))
(assert (= split (str.split input ",")))

(define-fun non_empty () RegLan (re.+ re.allchar))
(assert (= filtered (seq.filter split non_empty)))

(assert (= output (seq.join filtered ",")))
(assert (= output "cat,dog,,mouse"))

(check-sat)