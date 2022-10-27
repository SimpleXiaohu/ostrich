(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.to.int Username) 32))
(assert (> (str.to.int Username) 0))
(assert (<= (str.to.int Domainname) 325))
(assert (> 0 (str.len Domainname)))
(assert (= Email (str.++ Username "0")))
(assert (str.in.re Email (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "&") (re.++ (re.+ (re.++ (re.* (re.++ (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.* re.allchar))) (re.+ (re.++ (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range (str.++ "" Domainname) "9")))))))))
(assert (not (str.in.re Domainname (re.union (re.* re.allchar) (re.union (str.to.re "i") (str.to.re ""))))))
(check-sat)