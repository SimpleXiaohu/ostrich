;test regex ^(10)(1|0)(.)(.)(.)(.{18})(?:AB([^|]*)\||AQ([^|]*)\||AJ([^|]*)\||AF([^|]*)\||CS([^|]*)\||CR([^|]*)\||CT([^|]*)\||CK([^|]*)\||CV([^|]*)\||CY([^|]*)\||DA([^|]*)\||AO([^|]*)\|)+AY([0-9]*)AZ(.*)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "10") (re.++ (re.union (str.to_re "1") (str.to_re "0")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 18 18) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|")))) (re.++ (str.to_re "A") (re.++ (str.to_re "Q") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "J") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "F") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "C") (re.++ (str.to_re "S") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "C") (re.++ (str.to_re "R") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "C") (re.++ (str.to_re "K") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "C") (re.++ (str.to_re "V") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "C") (re.++ (str.to_re "Y") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "O") (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|")))))) (re.++ (str.to_re "A") (re.++ (str.to_re "Y") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re "A") (re.++ (str.to_re "Z") (re.* (re.diff re.allchar (str.to_re "\n")))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)