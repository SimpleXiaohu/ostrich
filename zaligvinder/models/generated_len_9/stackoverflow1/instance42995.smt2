;test regex (?:NETWORK;.*;(?:0|1);)(?:[^|]+[|]){3}([^|]+)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "N") (re.++ (str.to_re "E") (re.++ (str.to_re "T") (re.++ (str.to_re "W") (re.++ (str.to_re "O") (re.++ (str.to_re "R") (re.++ (str.to_re "K") (re.++ (str.to_re ";") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ";") (re.++ (re.union (str.to_re "0") (str.to_re "1")) (str.to_re ";")))))))))))) (re.++ ((_ re.loop 3 3) (re.++ (re.+ (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))) (re.+ (re.diff re.allchar (str.to_re "|")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)