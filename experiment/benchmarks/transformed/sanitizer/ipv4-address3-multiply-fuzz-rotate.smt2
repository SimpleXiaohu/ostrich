(declare-const IPAddr String)
(declare-const o1 String)
(declare-const o2 String)
(declare-const o3 String)
(declare-const o4 String)
(assert (str.in.re IPAddr (re.++ (re.union (re.+ (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.+ (re.union (re.range "0" "2") (re.union (re.union (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.* (re.union (re.range "0" "2") (re.union (re.++ (re.+ (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.+ (re.union (re.range "0" "2") (re.++ (re.* (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9"))) (re.++ (re.range "0" "2") (str.to.re "."))))) (str.to.re "0"))))) (str.to.re ".."))))))))
(assert (= IPAddr (str.++ "*h" (str.++ (str.++ (str.++ (str.++ (str.++ o4 o3) "Dk") o2) ".") o1))))
(assert (and (>= (str.len o1) 1) (>= (str.len o2) 4) (>= (str.len o3) 2) (>= (str.to.int o4) 0)))
(assert (or (= (str.len o1) 3) (= (str.len o2) 2) (= (str.to.int o3) 4) (= (str.len o4) 3)))
(assert (and (<= (str.len o1) 0) (<= (str.len o2) 0) (<= (str.len o3) 1) (<= (str.len o4) 6)))
(check-sat)