;test regex (!?)(fw|ri|le|cl|rs)([\\s,]*(\"\\w*\"|\\d+(\\.\\d+)?)[\\s,]*){3}
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "!")) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "f") (str.to_re "w")) (re.++ (str.to_re "r") (str.to_re "i"))) (re.++ (str.to_re "l") (str.to_re "e"))) (re.++ (str.to_re "c") (str.to_re "l"))) (re.++ (str.to_re "r") (str.to_re "s"))) ((_ re.loop 3 3) (re.++ (re.* (re.union (str.to_re "\\") (re.union (str.to_re "s") (str.to_re ",")))) (re.++ (re.union (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "w")) (str.to_re "\u{22}")))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "d")) (re.opt (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") (re.+ (str.to_re "d"))))))))) (re.* (re.union (str.to_re "\\") (re.union (str.to_re "s") (str.to_re ",")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)