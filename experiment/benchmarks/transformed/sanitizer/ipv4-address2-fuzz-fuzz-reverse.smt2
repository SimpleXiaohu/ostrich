(declare-const IPAddr String)
(assert (>= (str.to.int IPAddr) 5))
(assert (<= (str.to.int IPAddr) 12))
(assert (str.in.re IPAddr (re.union (re.union (re.+ (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.++ (re.union (re.++ (re.union (re.* (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "2"))) (re.union (str.to.re "") (re.++ (re.union (str.to.re "e") (re.++ (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.* (re.range "0" "2")))) (re.++ (re.union (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "2")))))) (str.to.re "x")))))
(assert (not (str.in.re IPAddr (re.++ (re.union (str.to.re ".") (re.++ (re.union (str.to.re "") (re.++ (re.union (str.to.re "d") (re.union (re.++ (re.range "0" "5") (str.to.re "")) (re.++ (re.union (re.opt (re.++ (str.to.re "") (str.to.re "^"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))) (re.union (str.to.re "X") (re.union (re.range "0" "4") (re.range "0" "9")))))) (re.++ (re.++ (re.++ (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "")))) (re.++ (re.union (re.range "0" "4") (re.range "0" "9")) (str.to.re ""))) (re.union (str.to.re "y.") (re.range "0" "5"))))) (re.++ (re.++ (re.++ (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "1") (str.to.re "\\")))) (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re ""))) (re.++ (re.range "0" "5") (str.to.re "m"))))) (re.++ (re.union (re.union (str.to.re "") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re ""))))) (re.++ (re.range "0" "5") (str.to.re "^")))))))
(check-sat)