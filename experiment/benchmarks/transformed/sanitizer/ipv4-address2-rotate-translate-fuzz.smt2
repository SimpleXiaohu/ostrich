(declare-const IPAddr String)
(assert (>= (str.to.int IPAddr) 12))
(assert (<= (str.len IPAddr) 11))
(assert (str.in.re IPAddr (re.union (re.union (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.+ (re.++ (re.range "0" "2") (re.union (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.++ (re.* (re.++ (re.range "0" "2") (re.union (re.union (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.+ (re.++ (re.range "0" "2") (re.++ (re.* (re.++ (re.* (re.* (re.range "0" "9"))) (re.range "0" "9"))) (re.++ (re.range "0" "2") (str.to.re ""))))) (str.to.re "%"))))) (str.to.re "u"))))))))
(assert (not (str.in.re IPAddr (re.union (re.range "0" "5") (re.union (re.++ (re.++ (re.union (re.range "0" "9") (str.to.re "2")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re "1")))))) (re.range "0" "4")) (re.++ (str.to.re "1r5") (re.++ (re.range "0" "5") (re.union (re.++ (re.++ (re.++ (re.union (re.range "0" "9") (str.to.re "2")) (re.++ (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "") (str.to.re "")))))) (re.range "0" "4")) (re.union (str.to.re "2r") (re.++ (re.range "0" "5") (re.union (re.union (re.union (re.union (re.++ (re.range "0" "9") (str.to.re "{")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "")))))) (re.range "0" "4")) (re.union (str.to.re "2`W") (re.union (re.union (re.range "0" "5") (re.++ (re.++ (re.union (re.range "0" "9") (str.to.re "2")) (re.++ (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "0") (str.to.re "'\n'")))))) (re.range "0" "4"))) (re.union (str.to.re "") (str.to.re ""))))) (str.to.re "%"))))) (str.to.re "")))))))))
(check-sat)