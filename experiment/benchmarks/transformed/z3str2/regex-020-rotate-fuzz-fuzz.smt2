(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.+ (str.to.re "")) (str.to.re "")))))
(assert (= (str.len x) 0))
(assert (not (= x "'uP!'\t'Ld0z[2He.C")))
(assert (not (= x "epr*8b")))
(assert (not (= x "")))
(check-sat)
(get-model)