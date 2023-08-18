;test regex ereg("^#[01-9A-F]{6}$", $sColor)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (str.to_re "#") ((_ re.loop 6 6) (re.union (re.range "01" "9") (re.range "A" "F")))))) (re.++ (str.to_re "") (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (str.to_re " "))) (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (str.to_re "r"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)