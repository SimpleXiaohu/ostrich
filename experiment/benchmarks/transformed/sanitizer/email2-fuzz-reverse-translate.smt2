(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 27))
(assert (> (str.to.int Username) 0))
(assert (<= (str.to.int Domainname) 468))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ (str.++ Domainname "") Username)))
(assert (str.in.re Email (re.union (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.union (str.to.re "O") (re.union (re.* (re.++ (str.to.re "8") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))) (re.* (re.union (re.range "a" "z") (re.++ (re.range "0" "9") (re.range "A" "Z")))))))))
(assert (not (str.in.re Domainname (re.union (re.+ re.allchar) (re.++ (re.* re.allchar) (str.to.re "d"))))))
(check-sat)