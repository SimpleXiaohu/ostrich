(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Subject\x3A\s+Host\x3A.*www\x2Ealfacleaner\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "www.alfacleaner.com\u{0a}")))))
; ^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "/31"))) (str.to_re "/") (re.union (str.to_re "19") (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (str.to_re "2/29/") (re.union (re.++ (re.union (str.to_re "19") (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00"))))) (str.to_re "\u{0a}"))))
; Subject\x3A\s+www\u{2e}proventactics\u{2e}comdownloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "www.proventactics.comdownloads.morpheus.com/rotation\u{0a}"))))
; ^\s*-?(\d{0,7}|10[0-5]\d{0,5}|106[0-6]\d{0,4}|1067[0-4]\d{0,3}|10675[0-1]\d{0,2}|((\d{0,7}|10[0-5]\d{0,5}|106[0-6]\d{0,4}|1067[0-4]\d{0,3}|10675[0-1]\d{0,2})\.)?([0-1]?[0-9]|2[0-3]):[0-5]?[0-9](:[0-5]?[0-9](\.\d{1,7})?)?)\s*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) (re.union ((_ re.loop 0 7) (re.range "0" "9")) (re.++ (str.to_re "10") (re.range "0" "5") ((_ re.loop 0 5) (re.range "0" "9"))) (re.++ (str.to_re "106") (re.range "0" "6") ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (str.to_re "1067") (re.range "0" "4") ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (str.to_re "10675") (re.range "0" "1") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (re.++ (re.union ((_ re.loop 0 7) (re.range "0" "9")) (re.++ (str.to_re "10") (re.range "0" "5") ((_ re.loop 0 5) (re.range "0" "9"))) (re.++ (str.to_re "106") (re.range "0" "6") ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (str.to_re "1067") (re.range "0" "4") ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (str.to_re "10675") (re.range "0" "1") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "."))) (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.++ (str.to_re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 7) (re.range "0" "9")))))))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)