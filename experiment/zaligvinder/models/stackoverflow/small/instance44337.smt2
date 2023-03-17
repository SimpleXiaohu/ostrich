;test regex "^\\d{4}-\\d{2}-\\d{2}T\\d{2}%3A\\d{2}%3A\\d{2}(?:%2E\\d+)?[A-Z]?(?:[+.-](?:08%3A\\d{2}|\\d{2}[A-Z]))?$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 4 4) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re "T") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re "%") (re.++ (str.to_re "3") (re.++ (str.to_re "A") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re "%") (re.++ (str.to_re "3") (re.++ (str.to_re "A") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (re.opt (re.++ (str.to_re "%") (re.++ (str.to_re "2") (re.++ (str.to_re "E") (re.++ (str.to_re "\\") (re.+ (str.to_re "d"))))))) (re.++ (re.opt (re.range "A" "Z")) (re.opt (re.++ (re.union (str.to_re "+") (re.union (str.to_re ".") (str.to_re "-"))) (re.union (re.++ (str.to_re "08") (re.++ (str.to_re "%") (re.++ (str.to_re "3") (re.++ (str.to_re "A") (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d"))))))) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.range "A" "Z"))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)