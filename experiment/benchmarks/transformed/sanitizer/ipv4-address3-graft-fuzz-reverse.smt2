(declare-const IPAddr String)
(declare-const o1 String)
(declare-const o2 String)
(declare-const o3 String)
(declare-const o4 String)
(assert (str.in.re IPAddr (re.++ (re.++ (re.++ (re.union (str.to.re "") (re.++ (re.++ (re.++ (re.++ (re.+ (re.range "0" "9")) (str.to.re "")) (re.+ (re.range "0" "2"))) (re.* (re.range "0" "9"))) (re.++ (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.* (re.range "0" "2"))))) (re.union (re.+ (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))))) (str.to.re ".")) (re.++ (re.union (re.* (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "2"))))))
(assert (= IPAddr (str.++ (str.++ (str.++ "3" o2) "") o1)))
(assert (and (>= (str.len o1) 1) (>= (str.to.int o2) 2) (>= (str.len o3) 1) (>= (str.len o4) 2)))
(assert (or (= (str.len o1) 0) (= (str.to.int o2) 1) (= (str.len o3) 1) (= (str.len o4) 2)))
(assert (and (<= (str.to.int o1) 2) (<= (str.len o2) 1) (<= 2 0) (<= (str.len o4) (str.len o3))))
(check-sat)