(declare-const x String)
(assert (= x "}}yyLLyyLLgghh}}yyLL"))
(assert (str.in.re x (re.* (re.union (str.to.re "yyLLgghh") (str.to.re "}}yyLL")))))
(check-sat)
(get-model)