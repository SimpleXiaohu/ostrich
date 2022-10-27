(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "/'") (str.to.re "a")))))
(assert (= 10 (str.len x)))
(assert (not (= x "M?Y@")))
(assert (not (= x "aa88]:P-ba")))
(assert (not (= x "a8hk<s")))
(assert (not (= x "p#'+bb")))
(assert (not (= x "aaAS#''\x0b''!''\n''")))
(assert (not (= x "''\r''mJF#*NFmc''\r''Nb@!''\x0b''~L!hb")))
(assert (not (= x "aaaaL;V3K''\t''''\x0c''")))
(check-sat)
(get-model)