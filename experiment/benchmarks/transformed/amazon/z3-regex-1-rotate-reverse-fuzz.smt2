(declare-const S String)
(assert (not (str.in.re S (re.union re.allchar (str.to.re "dr!'7+{RBO7Xa")))))
(assert (str.in.re S (re.union (re.union (re.++ re.allchar (str.to.re "h^T")) (str.to.re "-F?[,}")) re.allchar)))
(check-sat)
(get-model)
(get-info :reason-unknown)