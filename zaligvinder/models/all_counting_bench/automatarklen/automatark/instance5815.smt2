(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([+]39)?((38[{8,9}|0])|(34[{7-9}|0])|(36[6|8|0])|(33[{3-9}|0])|(32[{8,9}]))([\d]{7})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "+39")) (re.union (re.++ (str.to_re "38") (re.union (str.to_re "{") (str.to_re "8") (str.to_re ",") (str.to_re "9") (str.to_re "}") (str.to_re "|") (str.to_re "0"))) (re.++ (str.to_re "34") (re.union (str.to_re "{") (re.range "7" "9") (str.to_re "}") (str.to_re "|") (str.to_re "0"))) (re.++ (str.to_re "36") (re.union (str.to_re "6") (str.to_re "|") (str.to_re "8") (str.to_re "0"))) (re.++ (str.to_re "33") (re.union (str.to_re "{") (re.range "3" "9") (str.to_re "}") (str.to_re "|") (str.to_re "0"))) (re.++ (str.to_re "32") (re.union (str.to_re "{") (str.to_re "8") (str.to_re ",") (str.to_re "9") (str.to_re "}")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; <a [a-zA-Z0-9 ="'.:;?]*href=*[a-zA-Z0-9 ="'.:;>?]*[^>]*>([a-zA-Z0-9 ="'.:;>?]*[^<]*<)\s*/a\s*>
(assert (not (str.in_re X (re.++ (str.to_re "<a ") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) (str.to_re "href") (re.* (str.to_re "=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re ">") (str.to_re "?"))) (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "/a") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ">\u{0a}") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re ">") (str.to_re "?"))) (re.* (re.comp (str.to_re "<"))) (str.to_re "<")))))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{0a}"))))
; /filename=[^\n]*\u{2e}wri/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".wri/i\u{0a}"))))
; ([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|(\d{1,3}\.){3}\d{1,3}
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "\u{0a}"))))))
(assert (> (str.len X) 10))
(check-sat)
