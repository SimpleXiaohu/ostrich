;test regex ["]{3}(["]{0,2}([^\\"]|\\(.|\n)))*["]{3}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (str.to_re "\u{22}")) (re.++ (re.* (re.++ ((_ re.loop 0 2) (str.to_re "\u{22}")) (re.union (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re "\u{22}"))) (re.++ (str.to_re "\\") (re.union (re.diff re.allchar (str.to_re "\n")) (str.to_re "\u{0a}")))))) ((_ re.loop 3 3) (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)