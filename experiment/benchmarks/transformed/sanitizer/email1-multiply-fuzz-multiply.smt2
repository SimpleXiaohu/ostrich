(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.to.int Username) 294))
(assert (> (str.to.int Username) 0))
(assert (<= (str.to.int Domainname) 376))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ Username (str.++ "@@" Domainname))))
(assert (str.in.re Email (re.union (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "DD``MM") (re.++ (re.+ (re.union (re.+ (re.++ (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range "0" "9")))) (str.to.re "rr.."))) (re.* (re.++ (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))))
(assert (str.in.re Domainname (re.++ (re.++ (re.union (str.to.re "22CC55") (re.range "0" "5")) (re.++ (re.union (str.to.re "22??") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "00''' '' '''||") (str.to.re "11nn"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "QQ") (re.++ (re.++ (re.++ (str.to.re "DD'''\n''\n'''vv22ccrrccee") (re.range "0" "5")) (re.++ (re.++ (str.to.re "22") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "00") (str.to.re "cc\\\\!!BB"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "..\\\\") (re.++ (re.union (re.++ (str.to.re "==aaWW'''\t''\t'''") (re.range "0" "5")) (re.union (re.++ (str.to.re "2222") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "") (str.to.re "66IIBB``"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "CCQQ..") (re.++ (re.++ (str.to.re "22") (re.range "0" "5")) (re.++ (re.++ (str.to.re "__'''\x0c''\x0c'''") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re """""gg") (str.to.re "ss33WW"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9"))))))))))))))
(check-sat)