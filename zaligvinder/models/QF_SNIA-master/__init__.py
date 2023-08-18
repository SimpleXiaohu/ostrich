def getTrackData (bname = None):
    import models.QF_SNIA-master.20180523Reynolds
    import models.QF_SNIA-master.20200224WuPyExZ3
    res = []
    for k in [
    		  models.QF_SNIA-master.20180523Reynolds,
    		  models.QF_SNIA-master.20200224WuPyExZ3,
              ]:
        res = res+k.getTrackData (bname or "QF_SNIA-master")
    return res
