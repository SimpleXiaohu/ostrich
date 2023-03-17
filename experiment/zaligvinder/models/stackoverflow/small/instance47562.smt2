;test regex ^$|^(([gG][iI][rR] {0,}0[aA]{2})|((([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y]?[0-9][0-9]?)|(([a-pr-uwyzA-PR-UWYZ][0-9][a-hjkstuwA-HJKSTUW])|([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y][0-9][abehmnprv-yABEHMNPRV-Y]))) {0,1}[0-9][abd-hjlnp-uw-zABD-HJLNP-UW-Z]{2}))$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.union (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.++ (re.union (str.to_re "i") (str.to_re "I")) (re.++ (re.union (str.to_re "r") (str.to_re "R")) (re.++ (re.++ (re.* (str.to_re " ")) ((_ re.loop 0 0) (str.to_re " "))) (re.++ (str.to_re "0") ((_ re.loop 2 2) (re.union (str.to_re "a") (str.to_re "A")))))))) (re.++ (re.union (re.++ (re.union (re.range "a" "p") (re.union (re.range "r" "u") (re.union (str.to_re "w") (re.union (str.to_re "y") (re.union (str.to_re "z") (re.union (re.range "A" "P") (re.union (re.range "R" "U") (re.union (str.to_re "W") (re.union (str.to_re "Y") (str.to_re "Z")))))))))) (re.++ (re.opt (re.union (re.range "a" "h") (re.union (re.range "k" "y") (re.union (re.range "A" "H") (re.range "K" "Y"))))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.union (re.++ (re.union (re.range "a" "p") (re.union (re.range "r" "u") (re.union (str.to_re "w") (re.union (str.to_re "y") (re.union (str.to_re "z") (re.union (re.range "A" "P") (re.union (re.range "R" "U") (re.union (str.to_re "W") (re.union (str.to_re "Y") (str.to_re "Z")))))))))) (re.++ (re.range "0" "9") (re.union (re.range "a" "h") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "u") (re.union (str.to_re "w") (re.union (re.range "A" "H") (re.union (str.to_re "J") (re.union (str.to_re "K") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "U") (str.to_re "W")))))))))))))))) (re.++ (re.union (re.range "a" "p") (re.union (re.range "r" "u") (re.union (str.to_re "w") (re.union (str.to_re "y") (re.union (str.to_re "z") (re.union (re.range "A" "P") (re.union (re.range "R" "U") (re.union (str.to_re "W") (re.union (str.to_re "Y") (str.to_re "Z")))))))))) (re.++ (re.union (re.range "a" "h") (re.union (re.range "k" "y") (re.union (re.range "A" "H") (re.range "K" "Y")))) (re.++ (re.range "0" "9") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "e") (re.union (str.to_re "h") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (re.range "v" "y") (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "E") (re.union (str.to_re "H") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "P") (re.union (str.to_re "R") (re.range "V" "Y"))))))))))))))))))))))) (re.++ ((_ re.loop 0 1) (str.to_re " ")) (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (re.range "d" "h") (re.union (str.to_re "j") (re.union (str.to_re "l") (re.union (str.to_re "n") (re.union (re.range "p" "u") (re.union (re.range "w" "z") (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (re.range "D" "H") (re.union (str.to_re "J") (re.union (str.to_re "L") (re.union (str.to_re "N") (re.union (re.range "P" "U") (re.range "W" "Z")))))))))))))))))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)