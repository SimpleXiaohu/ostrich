(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{0a}") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
; \"[^"]+\"|\([^)]+\)|[^\"\s\()]+
(assert (not (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (str.to_re "(") (re.+ (re.comp (str.to_re ")"))) (str.to_re ")")) (re.++ (re.+ (re.union (str.to_re "\u{22}") (str.to_re "(") (str.to_re ")") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}"))))))
(assert (> (str.len X) 10))
(check-sat)
