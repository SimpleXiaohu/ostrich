; fields = ["alice", "30", "engineer"]
; csv_row = ",".join(fields)
(set-logic QF_SLIA)

(declare-const fields (Seq String))
(declare-const csv_row String)

(assert (= fields (seq.++ (seq.unit "alice") (seq.unit "30") (seq.unit "engineer"))))
(assert (= csv_row (seq.join fields ",")))
(assert (= csv_row "alice,30,engineer"))

(check-sat)
(get-model)