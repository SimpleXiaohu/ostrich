;test regex ^QS([NDR])(.{4})(.{6})(\d{8})(\d{8}| {8})([01]{7})([ SH])([ ABXG])(.{4})(.{6})(.{8})(.{8})(.)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "Q") (re.++ (str.to_re "S") (re.++ (re.union (str.to_re "N") (re.union (str.to_re "D") (str.to_re "R"))) (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (re.union ((_ re.loop 8 8) (re.range "0" "9")) ((_ re.loop 8 8) (str.to_re " "))) (re.++ ((_ re.loop 7 7) (str.to_re "01")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "S") (str.to_re "H"))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "X") (str.to_re "G"))))) (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n"))) (re.diff re.allchar (str.to_re "\n"))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)