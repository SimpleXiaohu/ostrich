;test regex /^((http|https):\/{2})([w]{3})([\.]{1})([a-zA-Z0-9-]{2,63})([\.]{1})((a[cdefgilmnoqrstuwxz]|aero|arpa)|(b[abdefghijmnorstvwyz]|biz)|(c[acdfghiklmnorsuvxyz]|cat|co.in|com|coop)|d[ejkmoz]|(e[ceghrstu]|edu)|f[ijkmor]|(g[abdefghilmnpqrstuwy]|gov)|h[kmnrtu]|(i[delmnoqrst]|info|int)|(j[emop]|jobs)|k[eghimnprwyz]|l[abcikrstuvy]|(m[acdghklmnopqrstuvwxyz]|mil|mobi|museum)|(n[acefgilopruz]|name|net)|(om|org)|(p[aefghklmnrstwy]|pro)|qa|r[eouw]|s[abcdeghijklmnortvyz]|(t[cdfghjklmnoprtvwz]|travel)|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])([-A-Za-z0-9+&@#\/%=~_|:.]{0,51})$/i
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (str.to_re "s")))))) (re.++ (str.to_re ":") ((_ re.loop 2 2) (str.to_re "/")))) (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.++ ((_ re.loop 2 63) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "-"))))) (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "i") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "q") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "u") (re.union (str.to_re "w") (re.union (str.to_re "x") (str.to_re "z"))))))))))))))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re "o"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "p") (str.to_re "a"))))) (re.union (re.++ (str.to_re "b") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "i") (re.union (str.to_re "j") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "v") (re.union (str.to_re "w") (re.union (str.to_re "y") (str.to_re "z")))))))))))))))))))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (str.to_re "z"))))) (re.union (re.union (re.union (re.union (re.++ (str.to_re "c") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "i") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "u") (re.union (str.to_re "v") (re.union (str.to_re "x") (re.union (str.to_re "y") (str.to_re "z")))))))))))))))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "t")))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "i") (str.to_re "n")))))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m")))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "p")))))) (re.++ (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "m") (re.union (str.to_re "o") (str.to_re "z")))))))) (re.union (re.++ (str.to_re "e") (re.union (str.to_re "c") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (str.to_re "u"))))))))) (re.++ (str.to_re "e") (re.++ (str.to_re "d") (str.to_re "u"))))) (re.++ (str.to_re "f") (re.union (str.to_re "i") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "m") (re.union (str.to_re "o") (str.to_re "r")))))))) (re.union (re.++ (str.to_re "g") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "i") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "q") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "u") (re.union (str.to_re "w") (str.to_re "y")))))))))))))))))))) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (str.to_re "v"))))) (re.++ (str.to_re "h") (re.union (str.to_re "k") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "r") (re.union (str.to_re "t") (str.to_re "u")))))))) (re.union (re.union (re.++ (str.to_re "i") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "q") (re.union (str.to_re "r") (re.union (str.to_re "s") (str.to_re "t"))))))))))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (str.to_re "o"))))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "t"))))) (re.union (re.++ (str.to_re "j") (re.union (str.to_re "e") (re.union (str.to_re "m") (re.union (str.to_re "o") (str.to_re "p"))))) (re.++ (str.to_re "j") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (str.to_re "s")))))) (re.++ (str.to_re "k") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "i") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "w") (re.union (str.to_re "y") (str.to_re "z"))))))))))))) (re.++ (str.to_re "l") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "i") (re.union (str.to_re "k") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "u") (re.union (str.to_re "v") (str.to_re "y"))))))))))))) (re.union (re.union (re.union (re.++ (str.to_re "m") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "p") (re.union (str.to_re "q") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "u") (re.union (str.to_re "v") (re.union (str.to_re "w") (re.union (str.to_re "x") (re.union (str.to_re "y") (str.to_re "z")))))))))))))))))))))) (re.++ (str.to_re "m") (re.++ (str.to_re "i") (str.to_re "l")))) (re.++ (str.to_re "m") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (str.to_re "i"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (str.to_re "m")))))))) (re.union (re.union (re.++ (str.to_re "n") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "e") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "i") (re.union (str.to_re "l") (re.union (str.to_re "o") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "u") (str.to_re "z"))))))))))))) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "t"))))) (re.union (re.++ (str.to_re "o") (str.to_re "m")) (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "g"))))) (re.union (re.++ (str.to_re "p") (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "w") (str.to_re "y"))))))))))))))) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (str.to_re "o"))))) (re.++ (str.to_re "q") (str.to_re "a"))) (re.++ (str.to_re "r") (re.union (str.to_re "e") (re.union (str.to_re "o") (re.union (str.to_re "u") (str.to_re "w")))))) (re.++ (str.to_re "s") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "i") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "r") (re.union (str.to_re "t") (re.union (str.to_re "v") (re.union (str.to_re "y") (str.to_re "z"))))))))))))))))))))) (re.union (re.++ (str.to_re "t") (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "t") (re.union (str.to_re "v") (re.union (str.to_re "w") (str.to_re "z")))))))))))))))))) (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re "l")))))))) (re.++ (str.to_re "u") (re.union (str.to_re "a") (re.union (str.to_re "g") (re.union (str.to_re "k") (re.union (str.to_re "m") (re.union (str.to_re "s") (re.union (str.to_re "y") (str.to_re "z"))))))))) (re.++ (str.to_re "v") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "i") (re.union (str.to_re "n") (str.to_re "u"))))))))) (re.++ (str.to_re "w") (re.union (str.to_re "f") (str.to_re "s")))) (re.++ (str.to_re "y") (re.union (str.to_re "e") (re.union (str.to_re "t") (str.to_re "u"))))) (re.++ (str.to_re "z") (re.union (str.to_re "a") (re.union (str.to_re "m") (str.to_re "w"))))) ((_ re.loop 0 51) (re.union (str.to_re "-") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "&") (re.union (str.to_re "@") (re.union (str.to_re "#") (re.union (str.to_re "/") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "~") (re.union (str.to_re "_") (re.union (str.to_re "|") (re.union (str.to_re ":") (str.to_re "."))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "i"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)