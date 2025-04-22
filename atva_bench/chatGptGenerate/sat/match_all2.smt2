(set-logic QF_SLIA)

(declare-const input String)
(declare-const matches (Seq String))

(assert (= input "a1b2c3"))

; Define regex to match single lowercase letter
(define-fun letter_re () RegLan (re.range "a" "z"))

(assert (= matches (str.match_all input letter_re)))

; There should be 3 matches: "a", "b", "c"
(assert (= (seq.nth matches 0) "a"))
(assert (= (seq.nth matches 1) "b"))
(assert (= (seq.nth matches 2) "c"))

(check-sat)
(get-model)
