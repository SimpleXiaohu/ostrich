(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[^\n]*\u{2e}class/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".class/i\u{0a}"))))
; (?i)^(((\\\\(\?\\(UNC\\)?)?)([A-Z]:\\|([^\\\/\:\*\?\"\<\>\|\.\s][^\\\/\:\*\?\"\<\>\|]+[^\\\/\:\*\?\"\<\>\|\.\s]\\){2}))|[A-Z]:\\)([^\\\/\:\*\?\"\<\>\|\s][^\\\/\:\*\?\"\<\>\|]+[^\\\/\:\*\?\"\<\>\|\s]\\)*([^\\\/\:\*\?\"\<\>\|\.\s][^\\\/\:\*\?\"\<\>\|\.]+[^\\\/\:\*\?\"\<\>\|\.\s])(\.[^\\\/\:\*\?\"\<\>\|\.\s]+)*?$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.range "A" "Z") (str.to_re ":\u{5c}")) ((_ re.loop 2 2) (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "\u{5c}")))) (str.to_re "\u{5c}\u{5c}") (re.opt (re.++ (str.to_re "?\u{5c}") (re.opt (str.to_re "UNC\u{5c}"))))) (re.++ (re.range "A" "Z") (str.to_re ":\u{5c}"))) (re.* (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "\u{5c}"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}") (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re "."))) (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))
; forum=.*Explorer\s+Host\x3Aact=Host\u{3a}User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "forum=") (re.* re.allchar) (str.to_re "Explorer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:act=Host:User-Agent:\u{0a}")))))
; (^\$(\d{1,3},?(\d{3},?)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{2})?)$|^\d{1,2}(\.\d{1,2})? *%$|^100%$)
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re ",")) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ",")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to_re " ")) (str.to_re "%")) (str.to_re "100%")) (str.to_re "\u{0a}")))))
(check-sat)