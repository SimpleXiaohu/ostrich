;test regex .*(row:([0-9]{1,}))?;.*field:([0-9]{1,});.*name:([0-9]{1,});
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re ":") (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))))))) (re.++ (str.to_re ";") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (re.++ (str.to_re ":") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re ";") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to_re ";"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)