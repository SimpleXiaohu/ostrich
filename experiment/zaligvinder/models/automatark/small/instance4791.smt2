(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[^\n]*\u{2e}emf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".emf/i\u{0a}")))))
; ^(((ht|f)tp(s?))\://)?(www.|[a-zA-Z].)[a-zA-Z0-9\-\.]+\.(com|edu|gov|mil|net|org|biz|info|name|museum|us|ca|uk)(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\;\?\';\\\+&amp;%\$#\=~_\-]+))*$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "://") (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (re.union (re.++ (str.to_re "www") re.allchar) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) re.allchar)) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".") (re.union (str.to_re "com") (str.to_re "edu") (str.to_re "gov") (str.to_re "mil") (str.to_re "net") (str.to_re "org") (str.to_re "biz") (str.to_re "info") (str.to_re "name") (str.to_re "museum") (str.to_re "us") (str.to_re "ca") (str.to_re "uk")) (re.* (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re ",") (str.to_re ";") (str.to_re "?") (str.to_re "'") (str.to_re "\u{5c}") (str.to_re "+") (str.to_re "&") (str.to_re "a") (str.to_re "m") (str.to_re "p") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "_") (str.to_re "-"))))) (str.to_re "\u{0a}"))))
; \b[A-Z0-9]{5}\d{1}[01567]\d{1}([0][1-9]|[12][0-9]|[3][0-1])\d{1}[A-Z0-9]{3}[A-Z]{2}\b
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (re.range "0" "9")) (re.union (str.to_re "0") (str.to_re "1") (str.to_re "5") (str.to_re "6") (str.to_re "7")) ((_ re.loop 1 1) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{0a}")))))
(check-sat)