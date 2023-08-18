;test regex TIME_ZONE\s*=\s*((\x20[^\x20]{1000,})|(\x20[^\x20]{1000,}))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "M") (re.++ (str.to_re "E") (re.++ (str.to_re "_") (re.++ (str.to_re "Z") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (str.to_re "E") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "=") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.++ (str.to_re "\u{20}") (re.++ (re.* (re.diff re.allchar (str.to_re "\u{20}"))) ((_ re.loop 1000 1000) (re.diff re.allchar (str.to_re "\u{20}"))))) (re.++ (str.to_re "\u{20}") (re.++ (re.* (re.diff re.allchar (str.to_re "\u{20}"))) ((_ re.loop 1000 1000) (re.diff re.allchar (str.to_re "\u{20}"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)