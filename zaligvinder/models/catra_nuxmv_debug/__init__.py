def getTrackData (bname = None):
    import models.catra_nuxmv_debug.tmp
    res = []
    for k in [
    		  models.catra_nuxmv_debug.tmp,
              ]:
        res = res+k.getTrackData (bname or "catra_nuxmv_debug")
    return res
