;test regex (?:(?:w{3}\.)(?:[a-zA-Z0-9/;\?&=:\-_\$\+!\*&#39;\(\|\\~\[\]#%\.])+[\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.aero|\.coop|\.museum|\.cat|\.jobs|\.travel|\.arpa|\.mobi|\.ac|\.ad|\.ae|\.af|\.ag|\.ai|\.al|\.am|\.an|\.ao|\.aq|\.ar|\.as|\.at|\.au|\.aw|\.az|\.ax|\.ba|\.bb|\.bd|\.be|\.bf|\.bg|\.bh|\.bi|\.bj|\.bm|\.bn|\.bo|\.br|\.bs|\.bt|\.bv|\.bw|\.by|\.bz|\.ca|\.cc|\.cd|\.cf|\.cg|\.ch|\.ci|\.ck|\.cl|\.cm|\.cn|\.co|\.cr|\.cs|\.cu|\.cv|\.cx|\.cy|\.cz|\.de|\.dj|\.dk|\.dm|\.do|\.dz|\.ec|\.ee|\.eg|\.eh|\.er|\.es|\.et|\.eu|\.fi|\.fj|\.fk|\.fm|\.fo|\.fr|\.ga|\.gb|\.gd|\.ge|\.gf|\.gg|\.gh|\.gi|\.gl|\.gm|\.gn|\.gp|\.gq|\.gr|\.gs|\.gt|\.gu|\.gw|\.gy|\.hk|\.hm|\.hn|\.hr|\.ht|\.hu|\.id|\.ie|\.il|\.im|\.in|\.io|\.iq|\.ir|\.is|\.it|\.je|\.jm|\.jo|\.jp|\.ke|\.kg|\.kh|\.ki|\.km|\.kn|\.kp|\.kr|\.kw|\.ky|\.kz|\.la|\.lb|\.lc|\.li|\.lk|\.lr|\.ls|\.lt|\.lu|\.lv|\.ly|\.ma|\.mc|\.md|\.mg|\.mh|\.mk|\.ml|\.mm|\.mn|\.mo|\.mp|\.mq|\.mr|\.ms|\.mt|\.mu|\.mv|\.mw|\.mx|\.my|\.mz|\.na|\.nc|\.ne|\.nf|\.ng|\.ni|\.nl|\.no|\.np|\.nr|\.nu|\.nz|\.om|\.pa|\.pe|\.pf|\.pg|\.ph|\.pk|\.pl|\.pm|\.pn|\.pr|\.ps|\.pt|\.pw|\.py|\.qa|\.re|\.ro|\.ru|\.rw|\.sa|\.sb|\.sc|\.sd|\.se|\.sg|\.sh|\..si|\.sj|\.sk|\.sl|\.sm|\.sn|\.so|\.sr|\.st|\.sv|\.sy|\.sz|\.tc|\.td|\.tf|\.tg|\.th|\.tj|\.tk|\.tl|\.tm|\.tn|\.to|\.tp|\.tr|\.tt|\.tv|\.tw|\.tz|\.ua|\.ug|\.uk|\.um|\.us|\.uy|\.uz|\.va|\.vc|\.ve|\.vg|\.vi|\.vn|\.vu|\.wf|\.ws|\.ye|\.yt|\.yu|\.za|\.zm|\.zw](?:[a-zA-Z0-9/;\?&=:\-_\$\+!\*&#39;\(\|\\~\[\]#%\.])*)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 3 3) (str.to_re "w")) (str.to_re ".")) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "/") (re.union (str.to_re ";") (re.union (str.to_re "?") (re.union (str.to_re "&") (re.union (str.to_re "=") (re.union (str.to_re ":") (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (str.to_re "$") (re.union (str.to_re "+") (re.union (str.to_re "!") (re.union (str.to_re "*") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re "|") (re.union (str.to_re "\\") (re.union (str.to_re "~") (re.union (str.to_re "[") (re.union (str.to_re "]") (re.union (str.to_re "#") (re.union (str.to_re "%") (str.to_re "."))))))))))))))))))))))))))))) (re.++ (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "o") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "d") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "o") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "n") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "i") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "e") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "o") (re.union (str.to_re "r") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "i") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "n") (re.union (str.to_re "f") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "r") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "o") (re.union (str.to_re "o") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "u") (re.union (str.to_re "s") (re.union (str.to_re "e") (re.union (str.to_re "u") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "a") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "j") (re.union (str.to_re "o") (re.union (str.to_re "b") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "r") (re.union (str.to_re "a") (re.union (str.to_re "v") (re.union (str.to_re "e") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "r") (re.union (str.to_re "p") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "o") (re.union (str.to_re "b") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "q") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "a") (re.union (str.to_re "x") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "b") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "j") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "b") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "x") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "d") (re.union (str.to_re "j") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "d") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "d") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "d") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "d") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "e") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "f") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "f") (re.union (str.to_re "j") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "f") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "f") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "f") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "f") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "b") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "q") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "h") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "h") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "h") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "h") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "h") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "h") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "q") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "j") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "j") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "j") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "j") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "k") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "b") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "l") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "q") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "x") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "m") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "n") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "o") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "p") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "q") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "r") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "r") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "r") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "r") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "b") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "j") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "s") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "h") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "j") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "o") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "w") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "t") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "u") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "u") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "u") (re.union (str.to_re "k") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "u") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "u") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "u") (re.union (str.to_re "y") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "u") (re.union (str.to_re "z") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "v") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "v") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "v") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "v") (re.union (str.to_re "g") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "v") (re.union (str.to_re "i") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "v") (re.union (str.to_re "n") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "v") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "w") (re.union (str.to_re "f") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "w") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "y") (re.union (str.to_re "e") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "y") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "y") (re.union (str.to_re "u") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "z") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "z") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "z") (str.to_re "w")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "/") (re.union (str.to_re ";") (re.union (str.to_re "?") (re.union (str.to_re "&") (re.union (str.to_re "=") (re.union (str.to_re ":") (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (str.to_re "$") (re.union (str.to_re "+") (re.union (str.to_re "!") (re.union (str.to_re "*") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re "|") (re.union (str.to_re "\\") (re.union (str.to_re "~") (re.union (str.to_re "[") (re.union (str.to_re "]") (re.union (str.to_re "#") (re.union (str.to_re "%") (str.to_re "."))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)