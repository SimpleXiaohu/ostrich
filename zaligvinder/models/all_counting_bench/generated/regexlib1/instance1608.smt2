;test regex <(/)?(a|abbr|acronym|address|applet|area|b|base|basefont|bdo|big|blockquote|body|br|button|caption|center|cite|code|col|colgroup|dd|del|dir|div|dfn|dl|dt|em|fieldset|font|form|frame|frameset|h[1-6]|head|hr|html|i|iframe|img|input|ins|isindex|kbd|label|legend|li|link|map|menu|meta|noframes|noscript|object|ol|optgroup|option|p|param|pre|q|s|samp|script|select|small|span|strike|strong|style|sub|sup|table|tbody|td|textarea|tfoot|th|thead|title|tr|tt|u|ul|var|xmp){1}(\s(\&quot;[^\&quot;]*\&quot;*|[^>])*)*>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (re.opt (str.to_re "/")) (re.++ ((_ re.loop 1 1) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "b") (str.to_re "r"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "y") (str.to_re "m")))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "d") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "s")))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re "t"))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "a"))))) (str.to_re "b")) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "e"))))) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re "t"))))))))) (re.++ (str.to_re "b") (re.++ (str.to_re "d") (str.to_re "o")))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (str.to_re "g")))) (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "c") (re.++ (str.to_re "k") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re "e"))))))))))) (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (str.to_re "y"))))) (re.++ (str.to_re "b") (str.to_re "r"))) (re.++ (str.to_re "b") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (str.to_re "n"))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n")))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re "r"))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (str.to_re "e"))))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (str.to_re "e"))))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "l")))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (str.to_re "p"))))))))) (re.++ (str.to_re "d") (str.to_re "d"))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "l")))) (re.++ (str.to_re "d") (re.++ (str.to_re "i") (str.to_re "r")))) (re.++ (str.to_re "d") (re.++ (str.to_re "i") (str.to_re "v")))) (re.++ (str.to_re "d") (re.++ (str.to_re "f") (str.to_re "n")))) (re.++ (str.to_re "d") (str.to_re "l"))) (re.++ (str.to_re "d") (str.to_re "t"))) (re.++ (str.to_re "e") (str.to_re "m"))) (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "t"))))))))) (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re "t"))))) (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "m"))))) (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "t"))))))))) (re.++ (str.to_re "h") (re.range "1" "6"))) (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (str.to_re "d"))))) (re.++ (str.to_re "h") (str.to_re "r"))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "m") (str.to_re "l"))))) (str.to_re "i")) (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e"))))))) (re.++ (str.to_re "i") (re.++ (str.to_re "m") (str.to_re "g")))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "p") (re.++ (str.to_re "u") (str.to_re "t")))))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "s")))) (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "x")))))))) (re.++ (str.to_re "k") (re.++ (str.to_re "b") (str.to_re "d")))) (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "l")))))) (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "d"))))))) (re.++ (str.to_re "l") (str.to_re "i"))) (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "k"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (str.to_re "p")))) (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "u"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (str.to_re "a"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re "s"))))))))) (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (str.to_re "t"))))))))) (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (str.to_re "t"))))))) (re.++ (str.to_re "o") (str.to_re "l"))) (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (str.to_re "p"))))))))) (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n"))))))) (str.to_re "p")) (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (str.to_re "m")))))) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (str.to_re "e")))) (str.to_re "q")) (str.to_re "s")) (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "p"))))) (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (str.to_re "t"))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (str.to_re "t"))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (str.to_re "l")))))) (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (str.to_re "n"))))) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "k") (str.to_re "e"))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re "g"))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "l") (str.to_re "e")))))) (re.++ (str.to_re "s") (re.++ (str.to_re "u") (str.to_re "b")))) (re.++ (str.to_re "s") (re.++ (str.to_re "u") (str.to_re "p")))) (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (str.to_re "e")))))) (re.++ (str.to_re "t") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (str.to_re "y")))))) (re.++ (str.to_re "t") (str.to_re "d"))) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "a"))))))))) (re.++ (str.to_re "t") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "t")))))) (re.++ (str.to_re "t") (str.to_re "h"))) (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (str.to_re "d")))))) (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "l") (str.to_re "e")))))) (re.++ (str.to_re "t") (str.to_re "r"))) (re.++ (str.to_re "t") (str.to_re "t"))) (str.to_re "u")) (re.++ (str.to_re "u") (str.to_re "l"))) (re.++ (str.to_re "v") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "x") (re.++ (str.to_re "m") (str.to_re "p"))))) (re.++ (re.* (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.* (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "q")) (re.inter (re.diff re.allchar (str.to_re "u")) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re "t")) (re.diff re.allchar (str.to_re ";")))))))) (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.* (str.to_re ";")))))))))))))) (re.diff re.allchar (str.to_re ">")))))) (str.to_re ">")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)