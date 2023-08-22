(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; <a [a-zA-Z0-9 ="'.:;?]*href=*[a-zA-Z0-9 ="'.:;>?]*[^>]*>([a-zA-Z0-9 ="'.:;>?]*[^<]*<)\s*/a\s*>
(assert (not (str.in_re X (re.++ (str.to_re "<a ") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) (str.to_re "href") (re.* (str.to_re "=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re ">") (str.to_re "?"))) (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "/a") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ">\u{0a}") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re ">") (str.to_re "?"))) (re.* (re.comp (str.to_re "<"))) (str.to_re "<")))))
; ^[H][R][\-][0-9]{5}$
(assert (str.in_re X (re.++ (str.to_re "HR-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; (^[A-Z]{1,2}[0-9]{1,}:{1}[A-Z]{1,2}[0-9]{1,}$)|(^\$(([A-Z])|([a-z])){1,2}([0-9]){1,}:{1}\$(([A-Z])|([a-z])){1,2}([0-9]){1,}$)|(^\$(([A-Z])|([a-z])){1,2}(\$){1}([0-9]){1,}:{1}\$(([A-Z])|([a-z])){1,2}(\$){1}([0-9]){1,}$)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ":")) ((_ re.loop 1 2) (re.range "A" "Z")) (re.+ (re.range "0" "9"))) (re.++ (str.to_re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ":")) (str.to_re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (str.to_re "$")) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ":")) (str.to_re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (str.to_re "$")) (re.+ (re.range "0" "9"))))))
; /\u{00}\.\u{00}\.\u{00}[\u{2f}\u{5c}]/R
(assert (str.in_re X (re.++ (str.to_re "/\u{00}.\u{00}.\u{00}") (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/R\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
