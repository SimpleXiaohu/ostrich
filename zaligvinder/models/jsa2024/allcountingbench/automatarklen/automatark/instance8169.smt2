(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (\s+|)((\(\d{3}\) +)|(\d{3}-)|(\d{3} +))?\d{3}(-| +)\d{4}( +x\d{1,4})?(\s+|)
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.+ (str.to_re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.+ (str.to_re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (re.+ (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.+ (str.to_re " ")) (str.to_re "x") ((_ re.loop 1 4) (re.range "0" "9")))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}"))))
; X-Mailer\u{3a}SpyAgentRootHost\x3A
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}SpyAgentRootHost:\u{0a}")))
; TM_SEARCH3Host\u{3a}User-Agent\x3Amedia\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (str.to_re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)