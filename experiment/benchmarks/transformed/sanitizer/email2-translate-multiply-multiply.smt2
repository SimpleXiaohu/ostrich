(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 256))
(assert (> (str.len Username) 0))
(assert (<= (str.len Domainname) 1024))
(assert (> (str.len Domainname) 0))
(assert (= Email (str.++ Username (str.++ "MMMM" Domainname))))
(assert (str.in.re Email (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "MMMM") (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (str.to.re "eeee"))) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))))
(assert (not (str.in.re Domainname (re.++ (re.* re.allchar) (re.++ (str.to.re "eeee") (re.* re.allchar))))))
(check-sat)