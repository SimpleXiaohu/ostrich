(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.++ (str.to.re "") (str.to.re "")))))
(assert (= 5 (str.to.int x)))
(assert (not (= x "[]]")))
(assert (not (= x "%3")))
(assert (not (= x "A]Z%@")))
(assert (not (= x "]Ta")))
(assert (not (= x "")))
(assert (not (= x "P@<'\x0c']")))
(assert (not (= x "++")))
(check-sat)
(get-model)