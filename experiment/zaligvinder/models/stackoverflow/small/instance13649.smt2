;test regex (?:^((\\%)?100(\\%)?$)|(?:^(\\%)?[0-9]{1,2}(\\%)?)((\\.|,)?[0-9]+)?$)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.++ (re.opt (re.++ (str.to_re "\\") (str.to_re "%"))) (re.++ (str.to_re "100") (re.opt (re.++ (str.to_re "\\") (str.to_re "%"))))) (str.to_re ""))) (re.++ (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "\\") (str.to_re "%"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re "\\") (str.to_re "%")))))) (re.opt (re.++ (re.opt (re.union (re.++ (str.to_re "\\") (re.diff re.allchar (str.to_re "\n"))) (str.to_re ","))) (re.+ (re.range "0" "9"))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)