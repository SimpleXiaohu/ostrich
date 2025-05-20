(set-logic QF_SLIA)
(declare-const path String)
(declare-const parts (Seq String))
(declare-const normalized String)

(assert (= path "/home/user/docs"))
(assert (= parts (str.split path "/")))
(assert (= normalized (seq.join parts "/")))
(assert (= normalized "home/user/docs"))

(check-sat)