(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 128))
(assert (> 0 (str.len Username)))
(assert (<= (str.len Domainname) 512))
(assert (> 0 (str.len Domainname)))
(assert (= Email (str.++ Username "99")))
(assert (str.in.re Email (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "@@") (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (str.to.re ".."))) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))))
(assert (str.in.re Domainname (re.++ (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "..") (re.++ (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "..") (re.++ (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "..") (re.union (re.++ (str.to.re "2255") (re.range "0" "5")) (re.union (re.++ (re.range "0" "@@") (str.to.re "00")) (re.++ (re.opt (re.union (re.++ (re.range "0" "4") (re.range "0" "9")) (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (str.to.re "22"))))))))))))))
(check-sat)