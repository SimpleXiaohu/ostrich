;test regex (WhateverYouAreUsing){2}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 2 2) (re.++ (str.to_re "W") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "Y") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "A") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "U") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "g"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)