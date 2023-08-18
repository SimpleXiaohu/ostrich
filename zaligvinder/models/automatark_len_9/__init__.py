def getTrackData (bname = None):
    import models.automatark_len_9.automatark
    res = []
    for k in [
    		  models.automatark_len_9.automatark,
              ]:
        res = res+k.getTrackData (bname or "automatark_len_9")
    return res
