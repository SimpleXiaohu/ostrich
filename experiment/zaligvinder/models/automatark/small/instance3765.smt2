(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(0|[-]{1}([1-9]{1}[0-9]{0,3}|[1-2]{1}[0-9]{1,4}|[3]{1}([0-1]{1}[0-9]{3}|[2]{1}([0-6]{1}[0-9]{2}|[7]{1}([0-5]{1}[0-9]{1}|([6]{1}[0-8]{1})))))|(\+)?([1-9]{1}[0-9]{0,3}|[1-2]{1}[0-9]{1,4}|[3]{1}([0-1]{1}[0-9]{3}|[2]{1}([0-6]{1}[0-9]{2}|[7]{1}([0-5]{1}[0-9]{1}|([6]{1}[0-7]{1}))))))$
(assert (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "7")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "6")) ((_ re.loop 1 1) (re.range "0" "8"))))))))))) (re.++ (re.opt (str.to_re "+")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "7")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "6")) ((_ re.loop 1 1) (re.range "0" "7")))))))))))) (str.to_re "\u{0a}"))))
; /filename=[^\n]*\u{2e}pmd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".pmd/i\u{0a}"))))
; ((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ (re.opt (str.to_re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ (re.opt (str.to_re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to_re "\u{0a}")))))
; /filename=[^\n]*\u{2e}pfb/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".pfb/i\u{0a}")))))
(check-sat)