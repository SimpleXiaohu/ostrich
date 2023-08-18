;test regex '~^\h*F\d{6}.*?\R{2}\K~sm'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{27}") (str.to_re "~")) (re.++ (str.to_re "") (re.++ (re.* (str.to_re "h")) (re.++ (str.to_re "F") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 2 2) (str.to_re "R")) (re.++ (str.to_re "K") (re.++ (str.to_re "~") (re.++ (str.to_re "s") (re.++ (str.to_re "m") (str.to_re "\u{27}"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)