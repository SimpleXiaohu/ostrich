(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "qb7Gdd8Ba"))))
(assert (str.in.re x (re.+ (str.to.re "baa"))))
(assert (str.in.re x (re.+ (str.to.re "c0f_v''\t''0e''\x0c''_<=]mv4Eb:U6|hp#q@''\r'',L*lo|@Vk\\''\n''Ya"))))
(assert (> (str.to.int x) 1))
(check-sat)
(get-model)