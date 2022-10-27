(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 180))
(assert (> (str.len Username) 0))
(assert (<= (str.len Domainname) (str.to.int Domainname)))
(assert (> 780 0))
(assert (= Email (str.++ Username "Z")))
(assert (str.in.re Email (re.union (re.* (re.++ (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range "0" "9")))) (re.union (str.to.re "") (re.++ (re.* (re.++ (re.* (re.++ (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.* re.allchar))) (re.+ (re.++ (re.range "a" "z") (re.union (re.range "A" (str.++ "" Domainname)) (re.range "0" "9")))))))))
(assert (not (str.in.re Domainname (re.union (re.+ re.allchar) (re.union (str.to.re "k") (str.to.re "G7"))))))
(check-sat)