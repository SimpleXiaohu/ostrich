;test regex &lt;[aA][ ]{0,}([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=/ ]|[-]|[	\f]){0,}&gt;((&lt;(([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=/ ]|[-]|[	\f]){0,})&gt;([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=/ ]|[-]|[	\f]){0,})|(([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=/ ]|[-]|[	\f]){0,})){0,}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "&") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.++ (re.++ (re.* (str.to_re " ")) ((_ re.loop 0 0) (str.to_re " "))) (re.++ (re.++ (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))) ((_ re.loop 0 0) (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}")))) (re.++ (str.to_re "&") (re.++ (str.to_re "g") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.* (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.++ (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))) ((_ re.loop 0 0) (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}")))) (re.++ (str.to_re "&") (re.++ (str.to_re "g") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))) ((_ re.loop 0 0) (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))))))))))))) (re.++ (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))) ((_ re.loop 0 0) (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}")))))) ((_ re.loop 0 0) (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.++ (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))) ((_ re.loop 0 0) (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}")))) (re.++ (str.to_re "&") (re.++ (str.to_re "g") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))) ((_ re.loop 0 0) (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))))))))))))) (re.++ (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))) ((_ re.loop 0 0) (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "&") (re.union (str.to_re "q") (re.union (str.to_re "u") (re.union (str.to_re "o") (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "_") (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "@") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "/") (str.to_re " "))))))))))))))))))))))))))))))))) (str.to_re "-")) (str.to_re "\u{0c}"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)