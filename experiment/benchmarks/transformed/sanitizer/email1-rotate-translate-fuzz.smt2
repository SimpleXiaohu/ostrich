(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 71))
(assert (> (str.to.int Username) 0))
(assert (<= (str.to.int Domainname) 271))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ "(" (str.++ Domainname Username))))
(assert (str.in.re Email (re.++ (re.range "A" "Z") (re.union (re.++ (re.range "0" "9") (re.range "a" "z")) (re.* (re.++ (re.range "A" "Z") (re.union (re.union (re.++ (re.union (re.range "0" "9") (re.range "a" "z")) (re.* (str.to.re "e"))) (re.* (re.+ (re.++ (re.range "A" "Z") (re.union (re.range "0" "9") (re.range "a" "z")))))) (str.to.re "\\"))))))))
(assert (str.in.re Domainname (re.union (re.range "0" "5") (re.++ (re.++ (re.union (re.union (re.range "0" "9") (str.to.re "2")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "") (str.to.re "1")))))) (re.range "0" "4")) (re.union (str.to.re "'\t'") (re.union (re.range "0" "5") (re.++ (re.++ (re.++ (re.++ (re.++ (re.range "0" "9") (str.to.re "2")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "G") (str.to.re "1")))))) (re.range "0" "4")) (re.union (str.to.re "2@Y") (re.union (re.range "0" "5") (re.++ (re.++ (re.union (re.union (re.union (re.range "0" "9") (str.to.re "")) (re.++ (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re "!")))))) (re.range "0" "4")) (re.union (str.to.re "2G") (re.union (re.++ (re.range "0" "5") (re.union (re.union (re.++ (re.range "0" "9") (str.to.re "d")) (re.union (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re "1")))))) (re.range "0" "4"))) (re.union (str.to.re "5") (str.to.re "q"))))) (str.to.re "="))))) (str.to.re "_"))))))))
(check-sat)