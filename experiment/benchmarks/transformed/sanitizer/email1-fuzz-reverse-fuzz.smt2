(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 25))
(assert (> (str.len Username) 0))
(assert (<= (str.to.int Domainname) 27))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ (str.++ Domainname "") Username)))
(assert (str.in.re Email (re.union (re.* (re.++ (re.++ (re.range "A" "Z") (re.range "0" "9")) (re.range "a" "z"))) (re.union (str.to.re "@") (re.++ (re.+ (re.++ (str.to.re "") (re.+ (re.++ (re.++ (re.range "0" "9") (re.range "A" "Z")) (re.range "a" "z"))))) (re.* (re.union (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range "0" "9")))))))))
(assert (str.in.re Domainname (re.++ (re.union (re.++ (re.range "0" "5") (str.to.re "/4]{XG.<$''")) (re.++ (re.++ (re.union (re.range "0" "4") (re.range "0" "9")) (str.to.re "O")) (re.++ (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "") (str.to.re "E")))))) (re.++ (str.to.re "") (re.++ (re.union (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.++ (re.range "0" "4") (re.range "0" "9")) (str.to.re "")) (re.union (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.opt (re.++ (str.to.re "1") (str.to.re "5"))))) (re.++ (re.range "0" "5") (str.to.re "")))) (re.++ (re.union (re.++ (str.to.re "") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re ""))))) (re.union (re.range "0" "5") (str.to.re "")))) (str.to.re "")) (re.union (re.++ (re.range "0" "5") (str.to.re "")) (re.union (re.union (re.union (re.range "0" "9") (re.range "0" "4")) (str.to.re "O")) (re.union (re.union (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "")))))))))))
(check-sat)