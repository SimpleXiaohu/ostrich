;test regex '01:32:54:67:89:AB'.match(/(([A-F0-9]{2}):){5}\2/); //null
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "01") (re.++ (str.to_re ":") (re.++ (str.to_re "32") (re.++ (str.to_re ":") (re.++ (str.to_re "54") (re.++ (str.to_re ":") (re.++ (str.to_re "67") (re.++ (str.to_re ":") (re.++ (str.to_re "89") (re.++ (str.to_re ":") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "\u{27}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (re.++ (str.to_re "/") (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":"))) (re.++ (_ re.reference 2) (str.to_re "/")))) (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (str.to_re "l")))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)