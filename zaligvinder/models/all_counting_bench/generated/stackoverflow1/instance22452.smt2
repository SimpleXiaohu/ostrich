;test regex .search(/\d+\/\d+\/\d{4}_\d+:\d+_(AM|PM)/)
(declare-const X String)
(assert (str.in_re X (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "/") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.union (re.++ (str.to_re "A") (str.to_re "M")) (re.++ (str.to_re "P") (str.to_re "M"))) (str.to_re "/"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)