(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "29") (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (str.to_re "00")) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (str.to_re "00")) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "\u{0a}")))))
; ^((\s|[0])\.(\d{0,2}\s{0,2}))?$|^(\.(\d\s){0,2})?$|^(\s{0,4}[1]{0,1}\.[0]{0,2}\s{0,4})?$|^(\s{0,4}[1]{0,1}\s{0,4})?$|^(\s{0,4}[0]{0,4}[1]{0,1}\s{0,4})?$|^([0]{0,4}\s{0,4})?$|^(\s{0,3}[0]{0,3}\.{1}\d{0,2}\s{0,2})?$
(assert (not (str.in_re X (re.union (re.opt (re.++ (re.union (str.to_re "0") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9")) ((_ re.loop 0 2) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.++ (re.range "0" "9") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.opt (re.++ ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "1")) (str.to_re ".") ((_ re.loop 0 2) (str.to_re "0")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "1")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 0 4) (str.to_re "0")) (re.opt (str.to_re "1")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ ((_ re.loop 0 4) (str.to_re "0")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.++ (re.opt (re.++ ((_ re.loop 0 3) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 0 3) (str.to_re "0")) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9")) ((_ re.loop 0 2) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}"))))))
; /filename=[^\n]*\u{2e}skm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".skm/i\u{0a}")))))
(check-sat)