;test regex ^((((0?[13578]|1[02])\/([0-2]?[1-9]|20|3[0-1]))|((0?[469]|11)\/([0-2]?[1-9]|20|30))|(0?2\/([0-1]?[1-9]|2[0-8])))\/((19|20)?\d{2}))|(0?2\/29\/((19|20)?(04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)|2000))$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (str.to_re "/") (re.union (re.union (re.++ (re.opt (re.range "0" "2")) (re.range "1" "9")) (str.to_re "20")) (re.++ (str.to_re "3") (re.range "0" "1"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (str.to_re "469")) (str.to_re "11")) (re.++ (str.to_re "/") (re.union (re.union (re.++ (re.opt (re.range "0" "2")) (re.range "1" "9")) (str.to_re "20")) (str.to_re "30"))))) (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "2") (re.++ (str.to_re "/") (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "1" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))))))) (re.++ (str.to_re "/") (re.++ (re.opt (re.union (str.to_re "19") (str.to_re "20"))) ((_ re.loop 2 2) (re.range "0" "9")))))) (re.++ (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "2") (re.++ (str.to_re "/") (re.++ (str.to_re "29") (re.++ (str.to_re "/") (re.union (re.++ (re.opt (re.union (str.to_re "19") (str.to_re "20"))) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "04") (str.to_re "08")) (str.to_re "12")) (str.to_re "16")) (str.to_re "20")) (str.to_re "24")) (str.to_re "28")) (str.to_re "32")) (str.to_re "36")) (str.to_re "40")) (str.to_re "44")) (str.to_re "48")) (str.to_re "52")) (str.to_re "56")) (str.to_re "60")) (str.to_re "64")) (str.to_re "68")) (str.to_re "72")) (str.to_re "76")) (str.to_re "80")) (str.to_re "84")) (str.to_re "88")) (str.to_re "92")) (str.to_re "96"))) (str.to_re "2000"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)