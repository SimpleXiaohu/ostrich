;test regex '{0}{1}{2}'.format(s[0],s[1:-1].replace('"',r'\"'),s[-1])
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) ((_ re.loop 1 1) ((_ re.loop 0 0) (str.to_re "\u{27}")))) (re.++ (str.to_re "\u{27}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (re.++ (re.++ (str.to_re "s") (str.to_re "0")) (re.++ (str.to_re ",") (re.++ (str.to_re "s") (re.++ (re.union (str.to_re "1") (re.union (str.to_re ":") (re.union (str.to_re "-") (str.to_re "1")))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\u{22}") (str.to_re "\u{27}"))) (re.++ (str.to_re ",") (re.++ (str.to_re "r") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\u{22}") (str.to_re "\u{27}")))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "s") (re.union (str.to_re "-") (str.to_re "1"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)