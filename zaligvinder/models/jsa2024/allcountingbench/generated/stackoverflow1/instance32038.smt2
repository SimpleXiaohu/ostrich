;test regex ^"([0-9]+)",([^:]*):(\W+):([A-Z]{3}[0-9]{5}),ID=([0-9]+)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{22}")))) (re.++ (str.to_re ",") (re.++ (re.* (re.diff re.allchar (str.to_re ":"))) (re.++ (str.to_re ":") (re.++ (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 5 5) (re.range "0" "9"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ (str.to_re "=") (re.+ (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)