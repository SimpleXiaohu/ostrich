(declare-const IPAddr String)
(declare-const o1 String)
(declare-const o2 String)
(declare-const o3 String)
(declare-const o4 String)
(assert (str.in.re IPAddr (re.union (re.* (re.++ (re.union (re.union (str.to.re ".") (re.+ (re.union (re.++ (re.++ (str.to.re "a") (re.+ (re.++ (re.++ (re.union (str.to.re "") (re.range "0" "2")) (re.* (re.++ (re.range "0" "9") (re.+ (re.* (re.range "0" "9")))))) (re.range "0" "2")))) (re.++ (re.range "0" "9") (re.* (re.+ (re.range "0" "9"))))) (re.range "0" "2")))) (re.union (re.range "0" "9") (re.* (re.* (re.range "0" "9"))))) (re.range "0" "2"))) (re.++ (re.range "0" "9") (re.* (re.* (re.range "0" "9")))))))
(assert (= IPAddr (str.++ (str.++ o1 (str.++ "" (str.++ o2 (str.++ "" (str.++ o3 o4))))) ".")))
(assert (and (>= (str.to.int o1) 0) (>= (str.len o2) 2) (>= (str.to.int o3) 2) (>= (str.len o4) 0)))
(assert (or (= (str.len o1) 0) (= (str.to.int o2) 2) (= (str.to.int o3) 2) (= (str.to.int o4) 0)))
(assert (and (<= (str.len o1) 6) (<= (str.to.int o2) 5) (<= (str.to.int o3) 2) (<= (str.to.int o4) 1)))
(check-sat)