(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^.*([^\.][\.](([gG][iI][fF])|([Jj][pP][Gg])|([Jj][pP][Ee][Gg])|([Bb][mM][pP])|([Pp][nN][Gg])))
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{0a}") (re.comp (str.to_re ".")) (str.to_re ".") (re.union (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "p") (str.to_re "P"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "n") (str.to_re "N")) (re.union (str.to_re "G") (str.to_re "g")))))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\u{2e}proventactics\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* re.allchar) (str.to_re "report") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:kwd-i%3fUser-Agent:www.proventactics.com\u{0a}"))))
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (str.in_re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; urn:[a-z0-9]{1}[a-z0-9\-]{1,31}:[a-z0-9_,:=@;!'%/#\(\)\+\-\.\$\*\?]+
(assert (str.in_re X (re.++ (str.to_re "urn:") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re ",") (str.to_re ":") (str.to_re "=") (str.to_re "@") (str.to_re ";") (str.to_re "!") (str.to_re "'") (str.to_re "%") (str.to_re "/") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "-") (str.to_re ".") (str.to_re "$") (str.to_re "*") (str.to_re "?"))) (str.to_re "\u{0a}"))))
; ^[\d]{5}[-\s]{1}[\d]{2}[-\s]{1}[\d]{2}[-\s]{1}[\d]{2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 9))
(check-sat)
