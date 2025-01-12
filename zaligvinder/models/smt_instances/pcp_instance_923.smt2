(set-info :smt-lib-version 2.6)
(set-logic QF_S)
(set-info :status unknown)

(declare-fun TopStr () String)
(declare-fun BottomStr () String)

(declare-fun Top_0 () String)
(declare-fun Bottom_0 () String)
(assert (= Top_0 "001"))
(assert (= Bottom_0 "110"))
(declare-fun Top_1 () String)
(declare-fun Bottom_1 () String)
(assert (= Top_1 "000"))
(assert (= Bottom_1 "001"))
(declare-fun Top_2 () String)
(declare-fun Bottom_2 () String)
(assert (= Top_2 "010"))
(assert (= Bottom_2 "100"))
(declare-fun replace () String)
(assert (str.in_re replace (re.+ (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4")))))

(declare-fun x () String)
(declare-fun y () String)
(declare-fun x_0 () String)
(declare-fun y_0 () String)
(declare-fun x_1 () String)
(declare-fun y_1 () String)
(declare-fun x_2 () String)
(declare-fun y_2 () String)
(assert (= x_1 (str.replace_all x_0 "2" Top_0)))
(assert (= x_2 (str.replace_all x_1 "3" Top_1)))
(assert (= x (str.replace_all x_2 "4" Top_2)))
(assert (= y_1 (str.replace_all y_0 "2" Bottom_0)))
(assert (= y_2 (str.replace_all y_1 "3" Bottom_1)))
(assert (= y (str.replace_all y_2 "4" Bottom_2)))
(assert (= x_0 replace))
(assert (= y_0 replace))

(assert (= x y))
(check-sat)
