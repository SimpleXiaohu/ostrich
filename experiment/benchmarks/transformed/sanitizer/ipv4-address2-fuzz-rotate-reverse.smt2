(declare-const IPAddr String)
(assert (>= (str.len IPAddr) 7))
(assert (<= (str.to.int IPAddr) 27))
(assert (str.in.re IPAddr (re.++ (re.+ (re.++ (re.union (re.++ (re.range "0" "9") (re.* (re.+ (re.range "0" "9")))) (re.union (re.* (re.union (re.range "0" "2") (re.union (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.++ (str.to.re "") (re.* (re.++ (re.union (re.+ (re.++ (re.range "0" "9") (re.+ (re.* (re.range "0" "9"))))) (re.++ (str.to.re "5") (re.range "0" "2"))) (re.range "0" "2"))))))) (str.to.re "x"))) (re.range "0" "2"))) (re.++ (re.range "0" "9") (re.+ (re.* (re.range "0" "9")))))))
(assert (not (str.in.re IPAddr (re.++ (re.++ (re.++ (re.++ (re.++ (str.to.re ".") (re.++ (re.union (str.to.re "m") (re.union (re.range "0" "5") (re.union (re.union (re.++ (re.range "0" "4") (re.union (re.union (re.range "0" "9") (str.to.re "2")) (re.++ (re.++ (re.opt (re.++ (str.to.re "") (str.to.re "0"))) (re.opt (re.range "0" "9"))) (re.range "0" "9")))) (re.++ (re.union (re.union (re.range "0" "5") (re.++ (re.range "0" "4") (re.++ (re.union (re.range "0" "9") (re.++ (re.opt (re.union (str.to.re "(") (str.to.re ""))) (re.opt (re.range "0" "9")))) (re.++ (str.to.re "X") (re.range "0" "9"))))) (re.union (str.to.re "x") (str.to.re "."))) (str.to.re "52"))) (str.to.re ".")))) (re.union (re.++ (re.union (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "\\") (str.to.re "1"))))) (re.union (re.range "0" "9") (str.to.re ":"))) (re.range "0" "4")))) (re.range "0" "5")) (str.to.re "?^")) (re.++ (re.range "0" "4") (re.union (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (re.++ (re.opt (re.++ (str.to.re "") (str.to.re ""))) (re.opt (re.range "0" "9"))) (re.range "0" "9"))))) (re.range "0" "5")))))
(check-sat)