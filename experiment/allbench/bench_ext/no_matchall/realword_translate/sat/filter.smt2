; def get_errors(lines):
;     return [line for line in lines if line.startswith("ERROR")]
(set-logic QF_SLIA)

(declare-const logs (Seq String))
(declare-const errors (Seq String))
(define-fun re_error () RegLan
  (re.++ (str.to_re "ERROR") (re.* re.allchar)))

(assert (= logs
  (seq.++ (seq.unit "INFO start")
          (seq.unit "ERROR failed to open file")
          (seq.unit "DEBUG checking")
          (seq.unit "ERROR timeout"))))

(assert (= errors (seq.filter logs re_error)))
(assert (= (seq.len errors) 2))

(check-sat)
(get-model)