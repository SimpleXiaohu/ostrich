;test regex print (df_ori['YYYYMMDD'].astype(str).str.match(r'^\d{4,8}$'))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "f") (re.++ (str.to_re "_") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (re.union (str.to_re "\u{27}") (re.union (str.to_re "Y") (re.union (str.to_re "Y") (re.union (str.to_re "Y") (re.union (str.to_re "Y") (re.union (str.to_re "M") (re.union (str.to_re "M") (re.union (str.to_re "D") (re.union (str.to_re "D") (str.to_re "\u{27}")))))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "t") (str.to_re "r"))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (re.++ (re.++ (str.to_re "r") (str.to_re "\u{27}")) (re.++ (str.to_re "") ((_ re.loop 4 8) (re.range "0" "9")))) (re.++ (str.to_re "") (str.to_re "\u{27}"))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)