(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "-da"))))
(assert (str.in.re x (re.* (str.to.re "$lWKv;NJ,O*]qQ''\n'l6^Wd'\r'I+R?gBKAHPF5'\n'zouH1xqxh&<}D+-Fyx[E-x-4Ee|\\LS'\x0c'mMU'\x0b'^)B'%6!i{qN94gq9"))))
(assert (> (str.to.int x) 37))
(assert (< (str.len x) 12))
(check-sat)
(get-model)