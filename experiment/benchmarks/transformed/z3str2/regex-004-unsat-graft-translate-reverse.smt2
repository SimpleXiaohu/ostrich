(declare-const x String)
(assert (= x ",?f?fZj"))
(assert (str.in.re x (re.union (re.* (re.* (str.to.re ",?f"))) (str.to.re "?fZj"))))
(check-sat)
(get-model)