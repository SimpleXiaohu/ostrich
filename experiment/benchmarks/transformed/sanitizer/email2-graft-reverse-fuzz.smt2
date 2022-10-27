(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.to.int Username) 84))
(assert (> (str.len Username) 0))
(assert (<= (str.to.int Domainname) 460))
(assert (> 0 (str.to.int Domainname)))
(assert (= Email "9"))
(assert (str.in.re Email (re.union (re.union (re.++ (re.+ (re.++ (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" (str.++ (str.++ Domainname "") Username))))) (re.+ (re.union (re.union (re.* re.allchar) (str.to.re ".")) (re.+ (re.++ (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range "0" "9"))))))) (str.to.re "")) (re.* (re.++ (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))
(assert (not (str.in.re Domainname (re.union (str.to.re "") (re.* re.allchar)))))
(check-sat)