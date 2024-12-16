;test regex [^-]color: ?#([0-9a-f]{3}){1,2};
(declare-const X String)
(assert (str.in_re X (re.++ (re.diff re.allchar (str.to_re "-")) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re ":") (re.++ (re.opt (str.to_re " ")) (re.++ (str.to_re "#") (re.++ ((_ re.loop 1 2) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "f")))) (str.to_re ";")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)