;test regex """/hdfs://\d+(\.\d+){3}:\d+(/(\w+([.+]\w+)*))+""".r
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "/") (re.++ (str.to_re "h") (re.++ (str.to_re "d") (re.++ (str.to_re "f") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.++ (str.to_re ":") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.+ (re.++ (str.to_re "/") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.* (re.++ (re.union (str.to_re ".") (str.to_re "+")) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "r")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)