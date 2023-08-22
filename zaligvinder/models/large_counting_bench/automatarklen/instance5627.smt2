(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; info\s+wjpropqmlpohj\u{2f}lo\x2Ftoolbar\x2Fsupremetbhoroscope2Cookie\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "wjpropqmlpohj/lo/toolbar/supremetbhoroscope2Cookie:\u{0a}")))))
; \w?<\s?\/?[^\s>]+(\s+[^"'=]+(=("[^"]*")|('[^\']*')|([^\s"'>]*))?)*\s*\/?>
(assert (not (str.in_re X (re.++ (re.opt (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "<") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "/")) (re.+ (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re "="))) (re.opt (re.union (re.++ (str.to_re "=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.comp (str.to_re "'"))) (str.to_re "'")) (re.* (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "/")) (str.to_re ">\u{0a}")))))
; [^a-zA-Z0-9]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{0a}")))))
; ^((http|https|ftp):\/\/)?((.*?):(.*?)@)?([a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])((\.[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])*)(:([0-9]{1,5}))?((\/.*?)(\?(.*?))?(\#(.*))?)?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp")) (str.to_re "://"))) (re.opt (re.++ (re.* re.allchar) (str.to_re ":") (re.* re.allchar) (str.to_re "@"))) (re.* (re.++ (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 0 61) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.++ (str.to_re "?") (re.* re.allchar))) (re.opt (re.++ (str.to_re "#") (re.* re.allchar))) (str.to_re "/") (re.* re.allchar))) (str.to_re "\u{0a}") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 0 61) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))
; ^([0-1][0-9]|[2][0-3]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":\u{0a}") (re.range "0" "5") (re.range "0" "9")))))
(assert (< 200 (str.len X)))
(check-sat)
