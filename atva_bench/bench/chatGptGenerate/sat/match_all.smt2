; # Extract hashtags
; tags = re.findall(r"#\w+", tweet)
(set-logic QF_SLIA)

(declare-const tweet String)
(declare-const hashtags (Seq String))

(assert (= tweet "Loving the #weather and #sunset today!"))

; Regex: "#" followed by one or more alphanumeric or underscore
(define-fun hashtag-char () RegLan
  (re.union
    (re.range "a" "z")
    (re.union (re.range "A" "Z")
              (re.union (re.range "0" "9")
                        (str.to_re "_")))))

(define-fun hashtag-re () RegLan
  (re.++ (str.to_re "#") (re.+ hashtag-char)))

(assert (= hashtags (str.match_all tweet hashtag-re)))
(assert (= (seq.len hashtags) 2))
(assert (= (seq.nth hashtags 0) "#weather"))
(assert (= (seq.nth hashtags 1) "#sunset"))

(check-sat)
(get-model)
