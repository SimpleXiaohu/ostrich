;test regex .{31}.*[xX]\x20[pP]\x20_\x20[sS]\x20[hH]\x20[oO]\x20[wW]\x20[cC]\x20[oO]\x20[lL]\x20[vV]\x20
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 31 31) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "x") (str.to_re "X")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "p") (str.to_re "P")) (re.++ (str.to_re "\u{20}") (re.++ (str.to_re "_") (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "h") (str.to_re "H")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "o") (str.to_re "O")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "w") (str.to_re "W")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "c") (str.to_re "C")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "o") (str.to_re "O")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "l") (str.to_re "L")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "v") (str.to_re "V")) (str.to_re "\u{20}"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)