(declare-const IPAddr String)
(declare-const o1 String)
(declare-const o2 String)
(declare-const o3 String)
(declare-const o4 String)
(assert (str.in.re IPAddr (re.++ (re.union (re.+ (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.* (re.++ (re.range "0" "2") (re.union (re.++ (re.* (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.+ (re.++ (re.range "0" "2") (re.union (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.+ (re.union (re.range "0" "2") (re.union (re.+ (re.union (re.* (re.* (re.range "0" "9"))) (re.range "0" "9"))) (re.++ (re.range "0" "2") (str.to.re ".V"))))) (str.to.re "."))))) (str.to.re "b1"))))))))
(assert (= IPAddr (str.++ ".." (str.++ (str.++ (str.++ (str.++ (str.++ o4 o3) "") o2) "k'\x0b'") o1))))
(assert (and (>= (str.len o1) 2) (>= (str.len o2) 0) (>= (str.len o3) 3) (>= (str.to.int o4) 1)))
(assert (or (= (str.len o1) 0) (= (str.len o2) 1) (= (str.to.int o3) 0) (= (str.to.int o4) 3)))
(assert (and (<= (str.to.int o1) 6) (<= (str.len o2) 4) (<= (str.to.int o3) 10) (<= (str.len o4) 3)))
(check-sat)