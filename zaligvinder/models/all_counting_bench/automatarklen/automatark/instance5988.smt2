(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Ready\s+Client\s+MyBrowserHost\u{3a}securityon\x3AHost\x3ARedirector\u{22}ServerHost\x3AX-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Client") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "MyBrowserHost:securityon:Host:Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{0a}")))))
; ^([0-9]{6}[\s\-]{1}[0-9]{12}|[0-9]{18})$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 12 12) (re.range "0" "9"))) ((_ re.loop 18 18) (re.range "0" "9"))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
