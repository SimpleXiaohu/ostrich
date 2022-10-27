(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.to.int Username) 38))
(assert (> (str.len Username) 0))
(assert (<= (str.to.int Domainname) 647))
(assert (> (str.len Domainname) 0))
(assert (= Email (str.++ Username (str.++ "" Domainname))))
(assert (str.in.re Email (re.union (re.* (re.++ (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range "0" "9")))) (re.union (str.to.re "k") (re.++ (re.* (re.union (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (str.to.re ""))) (re.* (re.++ (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range "0" "9")))))))))
(assert (not (str.in.re Domainname (re.++ (re.* re.allchar) (re.++ (str.to.re "") (re.+ re.allchar))))))
(check-sat)