(declare-const x String)
(assert (= x "aabb1p?cddc\\>s~wcC3~<'\n'>GdTnXlQ)"))
(assert (str.in.re x (re.++ (str.to.re "auQ2G]inbccd") (re.* (str.to.re "c.hFqOa''\t'de")))))
(check-sat)
(get-model)