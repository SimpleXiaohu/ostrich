(declare-fun a1 () (Seq String))
(declare-fun a2 () (Seq String))
(declare-fun x () String)
(declare-fun i () Int)


; match all elements by pattern ab*
(assert (= a1 (seq.match_all x (re.++ (str.to_re "a") (re.* (str.to_re "b"))))))
(assert (= (seq.unit "ab") (seq.at a1 i)))
(assert (< 1 (seq.len a1)))
; [abb, ab]
(assert (= x "abbcabd"))


(check-sat)
(get-model)

