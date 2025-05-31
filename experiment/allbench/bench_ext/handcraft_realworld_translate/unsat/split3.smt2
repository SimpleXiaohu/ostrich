(set-logic QF_SLIA)
(declare-const sentence String)
(declare-const words (Seq String))

(assert (= sentence "a b c"))
(assert (= words (str.split sentence " ")))
(assert (= (seq.nth words 3) "d"))

(check-sat)