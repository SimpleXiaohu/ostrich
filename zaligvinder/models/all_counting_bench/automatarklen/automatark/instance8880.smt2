(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /^[^\u{00}][^\u{00}\u{01}]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{00}")) (re.+ (re.union (str.to_re "\u{00}") (str.to_re "\u{01}"))) (str.to_re "/\u{0a}"))))
; /filename=[^\n]*\u{2e}jfif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".jfif/i\u{0a}")))))
; ((([sS]|[nN])[a-hA-Hj-zJ-Z])|(([tT]|[oO])[abfglmqrvwABFGLMQRVW])|([hH][l-zL-Z])|([jJ][lmqrvwLMQRVW]))([0-9]{2})?(([a-np-zA-NP-Z]{1}?|([0-9]{2})?([0-9]{2})?([0-9]{2})?([0-9]{2})?))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "s") (str.to_re "S") (str.to_re "n") (str.to_re "N")) (re.union (re.range "a" "h") (re.range "A" "H") (re.range "j" "z") (re.range "J" "Z"))) (re.++ (re.union (str.to_re "t") (str.to_re "T") (str.to_re "o") (str.to_re "O")) (re.union (str.to_re "a") (str.to_re "b") (str.to_re "f") (str.to_re "g") (str.to_re "l") (str.to_re "m") (str.to_re "q") (str.to_re "r") (str.to_re "v") (str.to_re "w") (str.to_re "A") (str.to_re "B") (str.to_re "F") (str.to_re "G") (str.to_re "L") (str.to_re "M") (str.to_re "Q") (str.to_re "R") (str.to_re "V") (str.to_re "W"))) (re.++ (re.union (str.to_re "h") (str.to_re "H")) (re.union (re.range "l" "z") (re.range "L" "Z"))) (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "l") (str.to_re "m") (str.to_re "q") (str.to_re "r") (str.to_re "v") (str.to_re "w") (str.to_re "L") (str.to_re "M") (str.to_re "Q") (str.to_re "R") (str.to_re "V") (str.to_re "W")))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.union ((_ re.loop 1 1) (re.union (re.range "a" "n") (re.range "p" "z") (re.range "A" "N") (re.range "P" "Z"))) (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
