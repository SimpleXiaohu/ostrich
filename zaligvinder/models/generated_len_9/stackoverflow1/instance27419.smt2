;test regex ([(])+([P])+([r])+([i])+([c])+([e])+([+]|[-]){1}([\d])+([+]|[-])?([\d])+([%])?([)])
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (str.to_re "(")) (re.++ (re.+ (str.to_re "P")) (re.++ (re.+ (str.to_re "r")) (re.++ (re.+ (str.to_re "i")) (re.++ (re.+ (str.to_re "c")) (re.++ (re.+ (str.to_re "e")) (re.++ ((_ re.loop 1 1) (re.union (str.to_re "+") (str.to_re "-"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (str.to_re "%")) (str.to_re ")"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)