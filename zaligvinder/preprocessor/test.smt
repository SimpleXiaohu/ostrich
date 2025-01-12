(set-option :incremental false)
(set-logic QF_S)
(set-option :produce-models true)
(set-info :status sat)
(declare-fun selKeyword_value () String)
(declare-fun selKeyword_value_trimed () String)
(declare-fun p1 () String)
(declare-fun p2 () String)
(declare-fun p3 () String)
(assert (= selKeyword_value (str.++ p1 p2 p3)))
(assert (str.in_re p1 (re.* (re.union (str.to_re " ") (str.to_re "\u{9}")))))
(assert (str.in_re p3 (re.* (re.union (str.to_re " ") (str.to_re "\u{9}")))))
(assert (not (str.suffixof " " p2)))
(assert (not (str.suffixof "\u{9}" p2)))
(assert (not (str.prefixof "\u{9}" p2)))
(assert (not (str.prefixof " " p2)))
(assert (= selKeyword_value_trimed p2))
(assert (= "\u{9} \u{9}Lxxxx29886 \u{9}" selKeyword_value))
(check-sat)
(get-model)
