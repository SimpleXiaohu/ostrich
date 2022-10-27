(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) (str.to.int Domainname)))
(assert (> (str.to.int Username) 0))
(assert (<= (str.to.int Domainname) 936))
(assert (> 54 0))
(assert (= Email (str.++ Username "aa")))
(assert (str.in.re Email (re.union (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.union (str.to.re "@@") (re.union (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (str.to.re "88"))) (re.* (re.union (re.range (str.++ "" Domainname) "z") (re.++ (re.range "A" "Z") (re.range "0" "9")))))))))
(assert (not (str.in.re Domainname (re.union (re.+ re.allchar) (re.++ (re.* re.allchar) (str.to.re ".."))))))
(check-sat)