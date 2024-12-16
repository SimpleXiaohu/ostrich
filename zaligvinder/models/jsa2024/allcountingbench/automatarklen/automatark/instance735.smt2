(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /^icmp\u{7c}\d+\u{7c}\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in_re X (re.++ (str.to_re "/icmp|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{0a}"))))
; ^(\d+|[a-zA-Z]+)$
(assert (str.in_re X (re.++ (re.union (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z")))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)