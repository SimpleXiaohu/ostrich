(declare-const IPAddr String)
(assert (str.in.re IPAddr (re.++ (re.++ (re.+ (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.* (re.union (re.range "0" "2") (re.union (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.++ (re.+ (re.++ (re.range "0" "2") (re.union (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.+ (re.++ (re.range "0" "2") (re.union (re.+ (re.++ (re.* (re.* (re.range "0" "9"))) (re.range "0" "9"))) (re.++ (re.range "0" "2") (str.to.re "uu"))))) (str.to.re ".."))))) (str.to.re ".."))))))))
(assert (not (str.in.re IPAddr (re.++ (re.range "0" "5") (re.union (re.union (re.++ (re.++ (re.range "0" "9") (str.to.re "")) (re.++ (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "00") (str.to.re "11")))))) (re.range "0" "4")) (re.union (str.to.re "22'''''\r''\r'''''\\\\") (re.union (re.range "0" "5") (re.union (re.++ (re.++ (re.++ (re.++ (re.range "0" "9") (str.to.re "ss")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "00") (str.to.re "QQ")))))) (re.range "0" "4")) (re.++ (str.to.re "55") (re.++ (re.range "0" "5") (re.union (re.union (re.++ (re.++ (re.union (re.range "0" "9") (str.to.re "")) (re.++ (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "00") (str.to.re "")))))) (re.range "0" "4")) (re.union (str.to.re "ZZ") (re.++ (re.++ (re.range "0" "5") (re.++ (re.++ (re.++ (re.range "0" "9") (str.to.re "")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "00") (str.to.re "11")))))) (re.range "0" "4"))) (re.++ (str.to.re "88JJ") (str.to.re ""))))) (str.to.re ""))))) (str.to.re "@@")))))))))
(check-sat)