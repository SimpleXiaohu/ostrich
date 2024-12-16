;test regex CUSTOMTIMESTAMP ([0-9]{4,4})\-([0-9]{2,2})\-([0-9]{2,2})([A-Za-z])(:?2[0123]|[01]?[0-9])(:?[0-5][0-9])(:?(:?[0-5]?[0-9]|60)(:?[:.,][0-9]+)?)(\+?([0-5][0-9]):?([0-9][0-9]))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "C") (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "O") (re.++ (str.to_re "M") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "M") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "M") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.++ (re.union (re.++ (re.opt (str.to_re ":")) (re.++ (str.to_re "2") (str.to_re "0123"))) (re.++ (re.opt (str.to_re "01")) (re.range "0" "9"))) (re.++ (re.++ (re.opt (str.to_re ":")) (re.++ (re.range "0" "5") (re.range "0" "9"))) (re.++ (re.++ (re.opt (str.to_re ":")) (re.++ (re.union (re.++ (re.opt (str.to_re ":")) (re.++ (re.opt (re.range "0" "5")) (re.range "0" "9"))) (str.to_re "60")) (re.opt (re.++ (re.opt (str.to_re ":")) (re.++ (re.union (str.to_re ":") (re.union (str.to_re ".") (str.to_re ","))) (re.+ (re.range "0" "9"))))))) (re.++ (re.opt (str.to_re "+")) (re.++ (re.++ (re.range "0" "5") (re.range "0" "9")) (re.++ (re.opt (str.to_re ":")) (re.++ (re.range "0" "9") (re.range "0" "9"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)