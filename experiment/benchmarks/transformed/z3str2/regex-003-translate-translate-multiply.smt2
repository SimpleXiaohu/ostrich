(declare-const x String)
(assert (= x "nnddWWFFWWee}}nnddnnddWWFFWW"))
(assert (str.in.re x (re.* (re.union (str.to.re "ee}}nndd") (str.to.re "nnddWWFFWW")))))
(check-sat)
(get-model)