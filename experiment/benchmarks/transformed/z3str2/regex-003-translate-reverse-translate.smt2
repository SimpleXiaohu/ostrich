(declare-const x String)
(assert (= x "Yawwrwwawwrww=]Yawwrww"))
(assert (str.in.re x (re.* (re.union (str.to.re "awwrww=]") (str.to.re "Yawwrww")))))
(check-sat)
(get-model)