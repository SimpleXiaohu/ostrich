;test regex .{31}[sS]\x20[pP]\x20_\x20[aA]\x20[dD]\x20[dD]\x20[uU]\x20[sS]\x20[eE]\x20[rR]\x20
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 31 31) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "p") (str.to_re "P")) (re.++ (str.to_re "\u{20}") (re.++ (str.to_re "_") (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "d") (str.to_re "D")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "d") (str.to_re "D")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "u") (str.to_re "U")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.++ (str.to_re "\u{20}") (re.++ (re.union (str.to_re "r") (str.to_re "R")) (str.to_re "\u{20}")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)