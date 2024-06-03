(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; <[aA][ ]{0,}([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,}>((<(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})>([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})|(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})){0,}
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "a") (str.to_re "A")) (re.* (str.to_re " ")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))) (str.to_re ">") (re.* (re.union (re.++ (str.to_re "<") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))) (str.to_re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))))) (str.to_re "\u{0a}")))))
; ^([a-z0-9]+([\-a-z0-9]*[a-z0-9]+)?\.){0,}([a-z0-9]+([\-a-z0-9]*[a-z0-9]+)?){1,63}(\.[a-z0-9]{2,7})+$
(assert (not (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to_re "."))) ((_ re.loop 1 63) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 7) (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
; /\/jovf\.html$/U
(assert (str.in_re X (str.to_re "//jovf.html/U\u{0a}")))
; X-Mailer\x3A\s+Toolbar\s+supremetoolbar\.comst=Host\x3A\x5Chome\/lordofsearchMicrosoftHost\u{3a}\+The\+password\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "supremetoolbar.comst=Host:\u{5c}home/lordofsearchMicrosoftHost:+The+password+is:\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
