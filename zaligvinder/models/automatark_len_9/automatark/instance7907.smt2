(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; vb\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (not (str.in_re X (re.++ (str.to_re "vb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:Subject:online-casino-searcher.com\u{0a}")))))
; /[^\u{20}-\u{7e}\u{0d}\u{0a}]{4}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (str.to_re "/P\u{0a}")))))
(assert (> (str.len X) 9))
(check-sat)
