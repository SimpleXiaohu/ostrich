(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ([A-Z]:\\[^/:\*;\/\:\?<>\|]+)|(\\{2}[^/:\*;\/\:\?<>\|]+)
(assert (not (str.in_re X (re.union (re.++ (re.range "A" "Z") (str.to_re ":\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re ";") (str.to_re "?") (str.to_re "<") (str.to_re ">") (str.to_re "|")))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 2 2) (str.to_re "\u{5c}")) (re.+ (re.union (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re ";") (str.to_re "?") (str.to_re "<") (str.to_re ">") (str.to_re "|"))))))))
(assert (> (str.len X) 10))
(check-sat)
