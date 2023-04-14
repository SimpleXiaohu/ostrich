(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+)*$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 1 25) ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z")))))) (re.* (re.++ (re.union (str.to_re ";") (str.to_re ".")) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 1 25) ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (str.to_re "\u{0a}")))))
; cid=tb\u{2e}\s+NETObserve\s+WinSession
(assert (str.in_re X (re.++ (str.to_re "cid=tb.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "NETObserve") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "WinSession\u{0a}"))))
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}|[0][7][7]-\d{7}|[0][2]-\d{7}|[0][3]-\d{7}|[0][4]-\d{7}|[0][8]-\d{7}|[0][9]-\d{7}|[0][5][0]\d{7}|[0][5][2]\d{7}|[0][5][4]\d{7}|[0][5][7]\d{7}|[0][7][7]\d{7}|[0][2]\d{7}|[0][3]\d{7}|[0][4]\d{7}|[0][8]\d{7}|[0][9]\d{7}$
(assert (str.in_re X (re.union (re.++ (str.to_re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "050") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; comUser-Agent\x3Asi=PORT\x3D\x2Fpagead\x2Fads\?Host\u{3a}\x2Fdesktop\x2F
(assert (str.in_re X (str.to_re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\u{0a}")))
; com\dsearch\u{2e}conduit\u{2e}com\s+User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "com") (re.range "0" "9") (str.to_re "search.conduit.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "User-Agent:\u{0a}"))))
(check-sat)