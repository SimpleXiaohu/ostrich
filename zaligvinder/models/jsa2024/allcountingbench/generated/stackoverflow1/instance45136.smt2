;test regex (SOCKS4|SOCKS5|HTTP|HTTPS)\|[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\|[0-9]{1,5}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.++ (str.to_re "S") (re.++ (str.to_re "O") (re.++ (str.to_re "C") (re.++ (str.to_re "K") (re.++ (str.to_re "S") (str.to_re "4")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "O") (re.++ (str.to_re "C") (re.++ (str.to_re "K") (re.++ (str.to_re "S") (str.to_re "5"))))))) (re.++ (str.to_re "H") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (str.to_re "P"))))) (re.++ (str.to_re "H") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (re.++ (str.to_re "P") (str.to_re "S")))))) (re.++ (str.to_re "|") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "|") ((_ re.loop 1 5) (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)