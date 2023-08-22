(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(GB)?(\ )?[0-9]\d{2}(\ )?[0-9]\d{3}(\ )?(0[0-9]|[1-8][0-9]|9[0-6])(\ )?([0-9]\d{2})?|(GB)?(\ )?GD(\ )?([0-4][0-9][0-9])|(GB)?(\ )?HA(\ )?([5-9][0-9][0-9])$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "8") (re.range "0" "9")) (re.++ (str.to_re "9") (re.range "0" "6"))) (re.opt (str.to_re " ")) (re.opt (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (str.to_re "GD") (re.opt (str.to_re " ")) (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (str.to_re "HA") (re.opt (str.to_re " ")) (str.to_re "\u{0a}") (re.range "5" "9") (re.range "0" "9") (re.range "0" "9"))))))
; ^([A-Z]{3}\s?(\d{3}|\d{2}|d{1})\s?[A-Z])|([A-Z]\s?(\d{3}|\d{2}|\d{1})\s?[A-Z]{3})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "d"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.range "A" "Z")) (re.++ (str.to_re "\u{0a}") (re.range "A" "Z") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "A" "Z")))))))
; rank\x2Etoolbarbrowser\x2Ecomlnzzlnbk\u{2f}pkrm\.fin
(assert (str.in_re X (str.to_re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\u{0a}")))
; ^(\+\d{2}[ \-]{0,1}){0,1}(((\({0,1}[ \-]{0,1})0{0,1}\){0,1}[2|3|7|8]{1}\){0,1}[ \-]*(\d{4}[ \-]{0,1}\d{4}))|(1[ \-]{0,1}(300|800|900|902)[ \-]{0,1}((\d{6})|(\d{3}[ \-]{0,1}\d{3})))|(13[ \-]{0,1}([\d \-]{5})|((\({0,1}[ \-]{0,1})0{0,1}\){0,1}4{1}[\d \-]{8,10})))$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))))) (re.union (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re ")")) ((_ re.loop 1 1) (re.union (str.to_re "2") (str.to_re "|") (str.to_re "3") (str.to_re "7") (str.to_re "8"))) (re.opt (str.to_re ")")) (re.* (re.union (str.to_re " ") (str.to_re "-"))) (re.opt (str.to_re "(")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "1") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union (str.to_re "300") (str.to_re "800") (str.to_re "900") (str.to_re "902")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (str.to_re "13") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 5 5) (re.union (re.range "0" "9") (str.to_re " ") (str.to_re "-")))) (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re ")")) ((_ re.loop 1 1) (str.to_re "4")) ((_ re.loop 8 10) (re.union (re.range "0" "9") (str.to_re " ") (str.to_re "-"))) (re.opt (str.to_re "(")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))))) (str.to_re "\u{0a}"))))
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (not (str.in_re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))) (re.opt (re.++ (re.union (re.++ (str.to_re "m") (re.opt (str.to_re "aj"))) (str.to_re "M") (str.to_re "aug") (str.to_re "dim") (str.to_re "sus")) (re.opt (re.union (re.range "2" "7") (str.to_re "9") (str.to_re "13"))))) (re.opt (re.++ (str.to_re "/") (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
