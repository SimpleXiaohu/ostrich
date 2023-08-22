(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([A-Za-z]{6}[0-9lmnpqrstuvLMNPQRSTUV]{2}[abcdehlmprstABCDEHLMPRST]{1}[0-9lmnpqrstuvLMNPQRSTUV]{2}[A-Za-z]{1}[0-9lmnpqrstuvLMNPQRSTUV]{3}[A-Za-z]{1})|([0-9]{11})$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 6 6) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "q") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "u") (str.to_re "v") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V"))) ((_ re.loop 1 1) (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "l") (str.to_re "m") (str.to_re "p") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "q") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "u") (str.to_re "v") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "q") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "u") (str.to_re "v") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; /^\u{2f}nosignal\.jpg\?\d\.\d+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//nosignal.jpg?") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "/U\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
