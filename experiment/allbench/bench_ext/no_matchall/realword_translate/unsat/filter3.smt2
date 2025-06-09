(set-logic QF_SLIA)
(declare-const input (Seq String))
(declare-const filtered (Seq String))

(assert (= input (seq.++ (seq.unit " ") (seq.unit "x") (seq.unit "y"))))
(define-fun no_space () RegLan (re.+ (re.diff re.allchar (re.range " " " "))))
(assert (= filtered (seq.filter input no_space)))
(assert (= (seq.nth filtered 0) " "))

(check-sat)