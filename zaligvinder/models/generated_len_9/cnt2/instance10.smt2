;test regex ^.*[dD][eE][lL][eE] [^\x0a]{100}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "d") (str.to_re "D")) (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.++ (re.union (str.to_re "l") (str.to_re "L")) (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.++ (str.to_re " ") ((_ re.loop 100 100) (re.diff re.allchar (str.to_re "\u{0a}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)