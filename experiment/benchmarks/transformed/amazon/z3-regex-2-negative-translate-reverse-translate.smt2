(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (str.to.re "---[[t[[[[t[[[[t[["))))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "---") (re.++ re.allchar (str.to.re "[[t[[[[t[[[[t[[")))))))
(check-sat)
(get-model)