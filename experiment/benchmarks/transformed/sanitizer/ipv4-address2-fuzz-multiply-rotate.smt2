(declare-const IPAddr String)
(assert (>= (str.len IPAddr) 14))
(assert (<= (str.to.int IPAddr) 54))
(assert (str.in.re IPAddr (re.++ (re.++ (re.+ (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.+ (re.++ (re.range "0" "2") (re.union (re.++ (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.* (re.union (re.range "0" "2") (re.union (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.++ (re.* (re.++ (re.range "0" "2") (re.union (re.+ (re.++ (re.+ (re.* (re.range "0" "9"))) (re.range "0" "9"))) (re.++ (re.range "0" "2") (str.to.re "55"))))) (str.to.re ""))))) (str.to.re "xx"))))))))
(assert (not (str.in.re IPAddr (re.++ (re.range "0" "5") (re.++ (re.++ (re.union (re.++ (re.range "0" "9") (str.to.re "22")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "") (str.to.re "")))))) (re.range "0" "4")) (re.++ (str.to.re "^^??") (re.++ (re.range "0" "5") (re.++ (re.++ (re.union (re.++ (re.union (re.range "0" "9") (str.to.re "::")) (re.union (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "\\\\") (str.to.re "11")))))) (re.range "0" "4")) (re.union (str.to.re "mm") (re.union (re.range "0" "5") (re.union (re.union (re.++ (re.union (re.union (re.range "0" "9") (str.to.re "22")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "00") (str.to.re "")))))) (re.range "0" "4")) (re.++ (str.to.re "2255") (re.union (re.union (re.range "0" "5") (re.++ (re.++ (re.++ (re.range "0" "9") (str.to.re "XX")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "((") (str.to.re "")))))) (re.range "0" "4"))) (re.union (str.to.re "xx") (str.to.re ".."))))) (str.to.re ".."))))) (str.to.re "..")))))))))
(check-sat)