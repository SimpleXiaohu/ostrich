;test regex ^[^\u0022\u0027\u003A\u003B]{1,50}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") ((_ re.loop 1 50) (re.inter (re.diff re.allchar (str.to_re "\u{0022}")) (re.inter (re.diff re.allchar (str.to_re "\u{0027}")) (re.inter (re.diff re.allchar (str.to_re "\u{003a}")) (re.diff re.allchar (str.to_re "\u{003b}"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)