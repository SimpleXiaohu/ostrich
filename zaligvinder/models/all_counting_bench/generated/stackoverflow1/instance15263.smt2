;test regex SB(\d+)EB\nSB(\w.*)EB\nSB(\d{3}\.\d{3}\.\d{2})EB\nSB(\d.*)EB\nSB(\d.*)EB\n
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "B") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "E") (re.++ (str.to_re "B") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "S") (re.++ (str.to_re "B") (re.++ (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "E") (re.++ (str.to_re "B") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "S") (re.++ (str.to_re "B") (re.++ (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))))) (re.++ (str.to_re "E") (re.++ (str.to_re "B") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "S") (re.++ (str.to_re "B") (re.++ (re.++ (re.range "0" "9") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "E") (re.++ (str.to_re "B") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "S") (re.++ (str.to_re "B") (re.++ (re.++ (re.range "0" "9") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "E") (re.++ (str.to_re "B") (str.to_re "\u{0a}"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)