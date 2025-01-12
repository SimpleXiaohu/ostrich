def getTrackData (bname = None):
    import models.smt_instances.*
    res = []
    for k in [
    		  models.smt_instances.*,
              ]:
        res = res+k.getTrackData (bname or "smt_instances")
    return res
