(declare-const S String)
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "VVV&&&")))))
(assert (str.in.re S (re.++ re.allchar (re.++ (str.to.re "VVV") (re.++ re.allchar (str.to.re "&&&"))))))
(check-sat)
(get-model)
(get-info :reason-unknown)