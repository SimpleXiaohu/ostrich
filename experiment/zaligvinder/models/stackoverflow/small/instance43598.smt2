;test regex comagic_visitor.+=.+%7C%7C.+(\\d{6})\;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "_") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "=") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "%") (re.++ (str.to_re "7") (re.++ (str.to_re "C") (re.++ (str.to_re "%") (re.++ (str.to_re "7") (re.++ (str.to_re "C") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "\\") ((_ re.loop 6 6) (str.to_re "d"))) (str.to_re ";")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)