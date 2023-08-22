(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename\s*=\s*[^\r\n]*?\u{2e}mcl[\u{22}\u{27}\u{3b}\s\r\n]/i
(assert (str.in_re X (re.++ (str.to_re "/filename") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (str.to_re ".mcl") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ";") (str.to_re "\u{0d}") (str.to_re "\u{0a}") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "/i\u{0a}"))))
; /filename=[^\n]*\u{2e}pdf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".pdf/i\u{0a}")))))
; ^(GB)?(\ )?[0-9]\d{2}(\ )?[0-9]\d{3}(\ )?(0[0-9]|[1-8][0-9]|9[0-6])(\ )?([0-9]\d{2})?|(GB)?(\ )?GD(\ )?([0-4][0-9][0-9])|(GB)?(\ )?HA(\ )?([5-9][0-9][0-9])$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "8") (re.range "0" "9")) (re.++ (str.to_re "9") (re.range "0" "6"))) (re.opt (str.to_re " ")) (re.opt (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (str.to_re "GD") (re.opt (str.to_re " ")) (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (str.to_re "HA") (re.opt (str.to_re " ")) (str.to_re "\u{0a}") (re.range "5" "9") (re.range "0" "9") (re.range "0" "9")))))
; ^(\(\d{2}\)?\s?|\d{2}(\-|\s))?\d{2,4}(\-|\s)?\d{4,5}$
(assert (not (str.in_re X (re.++ (re.opt (re.union (re.++ (str.to_re "(") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 5) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; www\x2Ezhongsou\x2Ecom\sisHost\x3Aare
(assert (str.in_re X (re.++ (str.to_re "www.zhongsou.com") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "isHost:are\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
