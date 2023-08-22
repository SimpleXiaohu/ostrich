(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\u{2f}rlnjFrom\x3Asbver\u{3a}Ghost
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\u{13}\u{0a}"))))
; ^[1-9]{1}[0-9]{3}\s?[A-Z]{2}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{0a}"))))
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (str.in_re X (re.++ (str.to_re "<textarea") (re.* (re.union re.allchar (str.to_re "\u{0a}"))) (str.to_re ">") (re.* (re.union re.allchar (str.to_re "\u{0a}"))) (str.to_re "</textarea>\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)