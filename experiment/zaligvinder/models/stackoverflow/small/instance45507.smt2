;test regex '#04215+#04215_DUP9262=' as '([#][0]["+pgNo+"][0-9]{3}[+][#][0]["+pgNo+"][0-9]{3}[_][D][U][P][0-9]{4}[=])'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "#") (re.++ (re.+ (str.to_re "04215")) (re.++ (str.to_re "#") (re.++ (str.to_re "04215") (re.++ (str.to_re "_") (re.++ (str.to_re "D") (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ (str.to_re "9262") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.++ (str.to_re "#") (re.++ (str.to_re "0") (re.++ (re.union (str.to_re "\u{22}") (re.union (str.to_re "+") (re.union (str.to_re "p") (re.union (str.to_re "g") (re.union (str.to_re "N") (re.union (str.to_re "o") (re.union (str.to_re "+") (str.to_re "\u{22}")))))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "+") (re.++ (str.to_re "#") (re.++ (str.to_re "0") (re.++ (re.union (str.to_re "\u{22}") (re.union (str.to_re "+") (re.union (str.to_re "p") (re.union (str.to_re "g") (re.union (str.to_re "N") (re.union (str.to_re "o") (re.union (str.to_re "+") (str.to_re "\u{22}")))))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (str.to_re "D") (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "="))))))))))))))) (str.to_re "\u{27}")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)