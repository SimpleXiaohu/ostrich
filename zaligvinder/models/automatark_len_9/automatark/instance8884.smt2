(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ([\d]{4}[ |-]?){2}([\d]{11}[ |-]?)([\d]{2})
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "|") (str.to_re "-"))))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}") ((_ re.loop 11 11) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "|") (str.to_re "-"))))))
; ^\s+|\s+$
(assert (not (str.in_re X (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}"))))))
; CD\x2F\.ico\x2FsLogearch195\.225\.
(assert (not (str.in_re X (str.to_re "CD/.ico/sLogearch195.225.\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
