(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((02[0-9]{2})|(0[8-9][0-9]{2})|(1[0-9]{3})|(2[0-7][0-9]{2})|(28[0-8][0-9])|(289[0-8])|(29[0-9]{2})|([3-5][0-9]{3})|(6[0-6][0-9]{2})|(67[0-8][0-9])|(679[0-7])|(6[8-9][0-9]{2})|([7-9][0-9]{3}))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "02") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "28") (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to_re "289") (re.range "0" "8")) (re.++ (str.to_re "29") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "3" "5") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "6") (re.range "0" "6") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "67") (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to_re "679") (re.range "0" "7")) (re.++ (str.to_re "6") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "7" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
