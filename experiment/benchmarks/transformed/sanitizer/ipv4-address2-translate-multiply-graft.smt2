(declare-const IPAddr String)
(assert (>= 30 14))
(assert (<= (str.len IPAddr) (str.len IPAddr)))
(assert (str.in.re IPAddr (re.++ (re.++ (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.++ (str.to.re "HH") (re.++ (re.++ (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.++ (str.to.re "HH") (re.++ (re.++ (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.++ (str.to.re "HH") (re.++ (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.++ (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "HH") (re.++ (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "HH") (re.++ (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "HH") (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (re.range "0" "9") (str.to.re "11"))) (re.++ (str.to.re "00") (re.opt (re.range "0" "9")))))))))))))))
(check-sat)