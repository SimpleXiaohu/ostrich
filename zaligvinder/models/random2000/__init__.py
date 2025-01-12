def getTrackData (bname = None):
    import models.random2000.QFS
    import models.random2000.QFSLIA
    res = []
    for k in [
    		  models.random2000.QFS,
    		  models.random2000.QFSLIA,
              ]:
        res = res+k.getTrackData (bname or "random2000")
    return res
