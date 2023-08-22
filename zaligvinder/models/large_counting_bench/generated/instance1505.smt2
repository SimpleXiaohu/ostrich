;test regex r'\\r?\\n?.{0,100}\s{0,40}$'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\\") (re.++ (re.opt (str.to_re "r")) (re.++ (str.to_re "\\") (re.++ (re.opt (str.to_re "n")) (re.++ ((_ re.loop 0 100) (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 0 40) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)