;test regex [du]{2}|[gu]{2}|[tu]{2}|[ds]{2}|[gs]{2}|[da]{2}|[ga]{2}|[ta]{2}|[dq]{2}|[gq]{2}|[tq]{2}|[DU]{2}|[GU]{2}|[TU]{2}|[DS]{2}|[GS]{2}|[DA]{2}|[GA]{2}|[TA]{2}|[DQ]{2}|[GQ]{2}|[TQ]{2}
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "u"))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "u")))) ((_ re.loop 2 2) (re.union (str.to_re "t") (str.to_re "u")))) ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "s")))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "s")))) ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "a")))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "a")))) ((_ re.loop 2 2) (re.union (str.to_re "t") (str.to_re "a")))) ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "q")))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "q")))) ((_ re.loop 2 2) (re.union (str.to_re "t") (str.to_re "q")))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "U")))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "U")))) ((_ re.loop 2 2) (re.union (str.to_re "T") (str.to_re "U")))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "S")))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "S")))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "A")))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "A")))) ((_ re.loop 2 2) (re.union (str.to_re "T") (str.to_re "A")))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "Q")))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "Q")))) ((_ re.loop 2 2) (re.union (str.to_re "T") (str.to_re "Q"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)