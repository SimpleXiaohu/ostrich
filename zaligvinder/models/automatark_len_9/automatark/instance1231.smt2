(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(\[a-zA-Z '\]+)$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}[a-zA-Z '") (re.+ (str.to_re "]")))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{0a}")))
; ^(FR)?\s?[A-Z0-9-[IO]]{2}[0-9]{9}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "FR")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "[") (str.to_re "I") (str.to_re "O")) ((_ re.loop 2 2) (str.to_re "]")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 9))
(check-sat)
