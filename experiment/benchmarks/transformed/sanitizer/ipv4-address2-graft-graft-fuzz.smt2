(declare-const IPAddr String)
(assert (>= 3 13))
(assert (<= (str.len IPAddr) (str.to.int IPAddr)))
(assert (str.in.re IPAddr (re.union (re.++ (re.* (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re ".") (re.++ (re.++ (re.* (re.range "0" "2")) (re.union (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.++ (str.to.re "") (re.++ (re.union (re.* (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re "E") (re.union (re.+ (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.union (re.++ (re.union (str.to.re "2cu") (re.range "0" "5")) (re.union (re.union (str.to.re "%") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "0") (str.to.re ""))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re ".") (re.union (re.++ (re.union (str.to.re "2") (re.range "0" "5")) (re.union (re.union (str.to.re "") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "") (str.to.re "~"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re ".") (re.++ (re.union (re.++ (str.to.re "") (re.range "0" "5")) (re.++ (re.union (str.to.re ",") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "") (re.union (re.union (str.to.re "5") (re.range "0" "5")) (re.++ (re.++ (str.to.re "8") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "F") (re.union (re.range "0" "9") (re.opt (str.to.re "1"))))) (re.range "0" "9")))))))))))))
(check-sat)