;test regex s/^(([^;]*;){3})(([0-9]+;){2})(([0-9]*;)*)(([^;]*;?){3})$/\1\3\7\n\1\5\7/
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (str.to_re "/")) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.++ (re.* (re.diff re.allchar (str.to_re ";"))) (str.to_re ";"))) (re.++ ((_ re.loop 2 2) (re.++ (re.+ (re.range "0" "9")) (str.to_re ";"))) (re.++ (re.* (re.++ (re.* (re.range "0" "9")) (str.to_re ";"))) ((_ re.loop 3 3) (re.++ (re.* (re.diff re.allchar (str.to_re ";"))) (re.opt (str.to_re ";"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (_ re.reference 3) (re.++ (_ re.reference 7) (re.++ (str.to_re "\u{0a}") (re.++ (_ re.reference 1) (re.++ (_ re.reference 5) (re.++ (_ re.reference 7) (str.to_re "/")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)