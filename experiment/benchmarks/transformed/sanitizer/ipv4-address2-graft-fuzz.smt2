(declare-const IPAddr String)
(assert (>= 8 (str.len IPAddr)))
(assert (<= (str.to.int IPAddr) 16))
(assert (str.in.re IPAddr (re.++ (re.++ (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re "") (re.union (re.++ (re.* (re.range "0" "2")) (re.union (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "") (re.union (re.union (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re "R") (re.++ (re.+ (re.range "0" "2")) (re.union (re.* (re.range "0" "9")) (re.* (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.++ (re.++ (re.union (str.to.re "") (re.range "0" "5")) (re.++ (re.++ (str.to.re "") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "0") (str.to.re "q"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "") (re.union (re.union (re.union (str.to.re "") (re.range "0" "5")) (re.union (re.union (str.to.re "") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "0") (str.to.re "5"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "") (re.++ (re.union (re.union (str.to.re "2X""") (re.range "0" "5")) (re.++ (re.union (str.to.re "2") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "0") (str.to.re ""))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re ".") (re.++ (re.union (str.to.re "_M") (re.range "0" "5")) (re.++ (re.++ (str.to.re "g") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "|") (re.range "0" "9"))) (re.union (re.range "0" "9") (re.opt (str.to.re "")))))))))))))))
(check-sat)