;test regex [^exe|EXE|xml]{2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "e")) (re.inter (re.diff re.allchar (str.to_re "x")) (re.inter (re.diff re.allchar (str.to_re "e")) (re.inter (re.diff re.allchar (str.to_re "|")) (re.inter (re.diff re.allchar (str.to_re "E")) (re.inter (re.diff re.allchar (str.to_re "X")) (re.inter (re.diff re.allchar (str.to_re "E")) (re.inter (re.diff re.allchar (str.to_re "|")) (re.inter (re.diff re.allchar (str.to_re "x")) (re.inter (re.diff re.allchar (str.to_re "m")) (re.diff re.allchar (str.to_re "l"))))))))))))) ((_ re.loop 2 2) (re.inter (re.diff re.allchar (str.to_re "e")) (re.inter (re.diff re.allchar (str.to_re "x")) (re.inter (re.diff re.allchar (str.to_re "e")) (re.inter (re.diff re.allchar (str.to_re "|")) (re.inter (re.diff re.allchar (str.to_re "E")) (re.inter (re.diff re.allchar (str.to_re "X")) (re.inter (re.diff re.allchar (str.to_re "E")) (re.inter (re.diff re.allchar (str.to_re "|")) (re.inter (re.diff re.allchar (str.to_re "x")) (re.inter (re.diff re.allchar (str.to_re "m")) (re.diff re.allchar (str.to_re "l"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)