(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.(([0-9]{1,3})|([a-zA-Z]{2,})))(;[ ]?[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.(([0-9]{1,3})|([a-zA-Z]{2,})))*$
(assert (not (str.in_re X (re.++ (re.* (re.++ (str.to_re ";") (re.opt (str.to_re " ")) (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))) (str.to_re ".") (re.union ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))))) (str.to_re "\u{0a}") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))) (str.to_re ".") (re.union ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z")))))))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\u{3a}connection
(assert (not (str.in_re X (re.++ (str.to_re "whenu.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Agent") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "toWebupdate.cgithisHost:connection\u{0a}")))))
; Online\u{25}21\u{25}21\u{25}21\sUser-Agent\x3A\d+HXDownloadasdbiz\x2Ebiz
(assert (str.in_re X (re.++ (str.to_re "Online%21%21%21") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.biz\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)