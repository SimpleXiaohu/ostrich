(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[^\n]*\u{2e}3gp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".3gp/i\u{0a}")))))
; /^\s*(http[s]*\:\/\/)?([wwW]{3}\.)+[a-zA-Z0-9]+\.[a-zA-Z]{2,3}.*$|^http[s]*\:\/\/[^w]{3}[a-zA-Z0-9]+\.[a-zA-Z]{2,3}.*$|http[s]*\:\/\/[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{2,3}.*$/;
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.++ (str.to_re "http") (re.* (str.to_re "s")) (str.to_re "://"))) (re.+ (re.++ ((_ re.loop 3 3) (re.union (str.to_re "w") (str.to_re "W"))) (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* re.allchar)) (re.++ (str.to_re "http") (re.* (str.to_re "s")) (str.to_re "://") ((_ re.loop 3 3) (re.comp (str.to_re "w"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* re.allchar)) (re.++ (str.to_re "http") (re.* (str.to_re "s")) (str.to_re "://") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 3) (re.range "0" "9")) (re.* re.allchar) (str.to_re "/;\u{0a}"))))))
(assert (> (str.len X) 10))
(check-sat)