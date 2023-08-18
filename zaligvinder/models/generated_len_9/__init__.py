def getTrackData (bname = None):
    import models.generated_len_9.cnt1
    import models.generated_len_9.cnt2
    import models.generated_len_9.regexlib1
    import models.generated_len_9.regexlib2
    import models.generated_len_9.stackoverflow1
    import models.generated_len_9.stackoverflow2
    res = []
    for k in [
    		  models.generated_len_9.cnt1,
    		  models.generated_len_9.cnt2,
    		  models.generated_len_9.regexlib1,
    		  models.generated_len_9.regexlib2,
    		  models.generated_len_9.stackoverflow1,
    		  models.generated_len_9.stackoverflow2,
              ]:
        res = res+k.getTrackData (bname or "generated_len_9")
    return res
