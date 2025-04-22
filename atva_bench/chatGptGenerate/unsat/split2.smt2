(set-logic QF_SLIA)
(declare-const s String)
(declare-const parts (Seq String))
(declare-const rejoined String)

(assert (= s "a:b:c"))
(assert (= parts (str.split s ":")))
(assert (= rejoined (seq.join parts ":")))
(assert (not (= rejoined "a:b:c")))

(check-sat)