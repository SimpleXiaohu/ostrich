(set-logic QF_SLIA)

(declare-const s String)
(declare-const parts (Seq String))
(declare-const rejoined String)

(assert (= s "x,y,z"))
(assert (= parts (str.split s ",")))
(assert (= rejoined (seq.join parts ",")))

; Contradiction: joined result must be "x,y,z"
(assert (not (= rejoined "x,y,z")))

(check-sat)