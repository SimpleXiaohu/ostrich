(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^ *(([\.\-\+\w]{2,}[a-z0-9])@([\.\-\w]+[a-z0-9])\.([a-z]{2,3})) *(; *(([\.\-\+\w]{2,}[a-z0-9])@([\.\-\w]+[a-z0-9])\.([a-z]{2,3})) *)* *$
(assert (not (str.in_re X (re.++ (re.* (str.to_re " ")) (re.* (str.to_re " ")) (re.* (re.++ (str.to_re ";") (re.* (str.to_re " ")) (re.* (str.to_re " ")) (str.to_re "@.") ((_ re.loop 2 3) (re.range "a" "z")) (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 2 2) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "0" "9")))) (re.* (str.to_re " ")) (str.to_re "\u{0a}@.") ((_ re.loop 2 3) (re.range "a" "z")) (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 2 2) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "0" "9"))))))
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (not (str.in_re X (str.to_re "HXDownloadUser-Agent:answerDeletingCookieReferer:\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
