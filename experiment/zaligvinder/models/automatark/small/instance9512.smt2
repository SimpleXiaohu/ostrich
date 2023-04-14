(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page. The control supports file filtering, limits and more. Samples available in the following languages: ASP, ASP.NET, PHP, Coldfusion and JSP
(assert (not (str.in_re X (re.++ (str.to_re "UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page") re.allchar (str.to_re " The control supports file filtering, limits and more") re.allchar (str.to_re " Samples available in the following languages: ASP, ASP") re.allchar (str.to_re "NET, PHP, Coldfusion and JSP\u{0a}")))))
; ^(((((0[1-9])|(1\d)|(2[0-8]))[/.-]((0[1-9])|(1[0-2])))|((31[/.-]((0[13578])|(1[02])))|((29|30)[/.-]((0[1,3-9])|(1[0-2])))))[/.-]((000[^0])&([0-9][0-9][0-9][0-9]))|(29[/.-]02[/.-](([0-9][0-9](([02468][48])|([2468][048])|([13579][26])))|((([02468][48])|([2468][048])|([13579][26]))00))))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2")))) (re.++ (str.to_re "31") (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))))) (re.++ (re.union (str.to_re "29") (str.to_re "30")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))))) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (str.to_re "&000") (re.comp (str.to_re "0")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "29") (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (str.to_re "02") (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (re.range "0" "9") (re.range "0" "9") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00"))))) (str.to_re "\u{0a}")))))
; ^(\S+\.{1})(\S+\.{1})*([^\s\.]+\s*)$
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) ((_ re.loop 1 1) (str.to_re ".")))) (str.to_re "\u{0a}") (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))
(check-sat)