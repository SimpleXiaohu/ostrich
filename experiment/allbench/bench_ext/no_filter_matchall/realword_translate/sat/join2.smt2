(set-logic QF_SLIA)
(declare-const words (Seq String))
(declare-const sentence String)

(assert (= words (seq.++ (seq.unit "hello") (seq.unit "world"))))
(assert (= sentence (seq.join words " ")))
(assert (= sentence "hello world"))

(check-sat)