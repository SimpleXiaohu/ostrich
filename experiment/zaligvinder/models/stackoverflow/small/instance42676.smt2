;test regex ((((^20[02468][048])|(^20[13579][26]))-(((0[13578]|1[02])-(0[1-9]|[12]\d|3[0-1]$))|((0[469]|11)-(0[1-9]|[12]\d|30$))|(02-(0[1-9]|1\d|2[0-9]$)))|((^20\d{2})-(((0[13578]|1[02])-(0[1-9]|[12]\d|3[01]$))|((0[469]|11)-(0[1-9]|[12]\d|30$))|(02-(0[1-9]|1\d|2[0-8]$)))))|0000-00-00){1}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 1) (re.union (re.union (re.++ (re.union (re.++ (str.to_re "") (re.++ (str.to_re "20") (re.++ (str.to_re "02468") (str.to_re "048")))) (re.++ (str.to_re "") (re.++ (str.to_re "20") (re.++ (str.to_re "13579") (str.to_re "26"))))) (re.++ (str.to_re "-") (re.union (re.union (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (re.++ (str.to_re "3") (re.range "0" "1")) (str.to_re ""))))) (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "469")) (str.to_re "11")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "30") (str.to_re "")))))) (re.++ (str.to_re "02") (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (re.++ (str.to_re "2") (re.range "0" "9")) (str.to_re "")))))))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "20") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "-") (re.union (re.union (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (re.++ (str.to_re "3") (str.to_re "01")) (str.to_re ""))))) (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "469")) (str.to_re "11")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "30") (str.to_re "")))))) (re.++ (str.to_re "02") (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (re.++ (str.to_re "2") (re.range "0" "8")) (str.to_re ""))))))))) (re.++ (str.to_re "0000") (re.++ (str.to_re "-") (re.++ (str.to_re "00") (re.++ (str.to_re "-") (str.to_re "00")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)