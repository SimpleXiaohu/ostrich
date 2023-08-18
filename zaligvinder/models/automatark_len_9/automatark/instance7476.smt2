(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (\[[Ii][Mm][Gg]\])(\S+?)(\[\/[Ii][Mm][Gg]\])
(assert (not (str.in_re X (re.++ (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (str.to_re "\u{0a}[") (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "G") (str.to_re "g")) (str.to_re "][/") (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "G") (str.to_re "g")) (str.to_re "]")))))
; /filename=[^\n]*\u{2e}ogg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".ogg/i\u{0a}")))))
; ^((67\d{2})|(4\d{3})|(5[1-5]\d{2})|(6011))(-?\s?\d{4}){3}|(3[4,7])\d{2}-?\s?\d{6}-?\s?\d{5}$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "67") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "6011")) ((_ re.loop 3 3) (re.++ (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{0a}3") (re.union (str.to_re "4") (str.to_re ",") (str.to_re "7")))))))
; /^[^\u{00}][^\u{00}\u{01}]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{00}")) (re.+ (re.union (str.to_re "\u{00}") (str.to_re "\u{01}"))) (str.to_re "/\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
