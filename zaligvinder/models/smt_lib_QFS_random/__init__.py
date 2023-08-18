def getTrackData (bname = None):
    import models.smt_lib_QFS_random.smtlibQFSrandom
    res = []
    for k in [
    		  models.smt_lib_QFS_random.smtlibQFSrandom,
              ]:
        res = res+k.getTrackData (bname or "smt_lib_QFS_random")
    return res
