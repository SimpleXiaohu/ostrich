(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "ac>#al+3[3W@'\x0c'a]7/Jb") re.allchar))))
(assert (str.in.re S (re.union re.allchar (re.union (str.to.re "b""'\r'H`#<Cb") (re.union (str.to.re "u{\\'\x0c'aJl'J'\x0c'[") re.allchar)))))
(check-sat)
(get-model)
(get-info :reason-unknown)