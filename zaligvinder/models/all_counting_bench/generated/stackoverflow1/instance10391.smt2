;test regex [1-9][0-9]{3}\-[0-1]?[1-9]\-[0-3]?[0-9]+T.+[\.][0-9]+(Z|[\+\-].+)
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "1" "9") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.opt (re.range "0" "1")) (re.++ (re.range "1" "9") (re.++ (str.to_re "-") (re.++ (re.opt (re.range "0" "3")) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "T") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re "Z") (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.+ (re.diff re.allchar (str.to_re "\n")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)