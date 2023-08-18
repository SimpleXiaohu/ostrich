;test regex ".{6}22.{5}\\s+.{6}33.{5}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "22") (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "33") (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)