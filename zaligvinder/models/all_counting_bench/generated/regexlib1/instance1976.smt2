;test regex ^(((([\*]{1}){1})|((\*\/){0,1}(([0-9]{1}){1}|(([1-5]{1}){1}([0-9]{1}){1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([0-9]{1}){1}|(([1]{1}){1}([0-9]{1}){1}){1}|([2]{1}){1}([0-3]{1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([1-9]{1}){1}|(([1-2]{1}){1}([0-9]{1}){1}){1}|([3]{1}){1}([0-1]{1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([1-9]{1}){1}|(([1-2]{1}){1}([0-9]{1}){1}){1}|([3]{1}){1}([0-1]{1}){1}))|(jan|feb|mar|apr|may|jun|jul|aug|sep|okt|nov|dec)) ((([\*]{1}){1})|((\*\/){0,1}(([0-7]{1}){1}))|(sun|mon|tue|wed|thu|fri|sat)))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "*") (str.to_re "/"))) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "5"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9")))))))) (re.++ (str.to_re " ") (re.++ (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "*") (str.to_re "/"))) (re.union (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "1"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9")))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "3"))))))) (re.++ (str.to_re " ") (re.++ (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "*") (str.to_re "/"))) (re.union (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9")))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1"))))))) (re.++ (str.to_re " ") (re.++ (re.union (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "*") (str.to_re "/"))) (re.union (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9")))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1"))))))) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "j") (re.++ (str.to_re "a") (str.to_re "n"))) (re.++ (str.to_re "f") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "a") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "j") (re.++ (str.to_re "u") (str.to_re "n")))) (re.++ (str.to_re "j") (re.++ (str.to_re "u") (str.to_re "l")))) (re.++ (str.to_re "a") (re.++ (str.to_re "u") (str.to_re "g")))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "p")))) (re.++ (str.to_re "o") (re.++ (str.to_re "k") (str.to_re "t")))) (re.++ (str.to_re "n") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "c"))))) (re.++ (str.to_re " ") (re.union (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "*") (str.to_re "/"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "7"))))) (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "u") (str.to_re "n"))) (re.++ (str.to_re "m") (re.++ (str.to_re "o") (str.to_re "n")))) (re.++ (str.to_re "t") (re.++ (str.to_re "u") (str.to_re "e")))) (re.++ (str.to_re "w") (re.++ (str.to_re "e") (str.to_re "d")))) (re.++ (str.to_re "t") (re.++ (str.to_re "h") (str.to_re "u")))) (re.++ (str.to_re "f") (re.++ (str.to_re "r") (str.to_re "i")))) (re.++ (str.to_re "s") (re.++ (str.to_re "a") (str.to_re "t")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)