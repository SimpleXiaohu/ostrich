(set-logic QF_SLIA)

(declare-const original String)
(declare-const split_seq (Seq String))
(declare-const rejoined String)

(assert (= original "a,b,c"))
(assert (= split_seq (str.split original ",")))
(assert (= rejoined (seq.join split_seq ",")))

; Claim rejoined is different from original
(assert (not (= rejoined "a,b,c")))

(check-sat)