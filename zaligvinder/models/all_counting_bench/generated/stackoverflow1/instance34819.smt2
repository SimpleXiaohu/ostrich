;test regex ^([^|]*\|){6}(\d+(\.\d+)?)?(\|[^|]*){5}\|(\d+(\.\d+)?)?(\|[^|]*){4}(\|(\d\d\.\d\d\.\d{4})?){2}\|[^|]*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 6 6) (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))) (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))) (re.++ ((_ re.loop 5 5) (re.++ (str.to_re "|") (re.* (re.diff re.allchar (str.to_re "|"))))) (re.++ (str.to_re "|") (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))) (re.++ ((_ re.loop 4 4) (re.++ (str.to_re "|") (re.* (re.diff re.allchar (str.to_re "|"))))) (re.++ ((_ re.loop 2 2) (re.++ (str.to_re "|") (re.opt (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9"))))))))))) (re.++ (str.to_re "|") (re.* (re.diff re.allchar (str.to_re "|")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)