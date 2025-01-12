def getTrackData (bname = None):
    import models.hard_smt_instances.*
    res = []
    for k in [
    		  models.hard_smt_instances.*,
              ]:
        res = res+k.getTrackData (bname or "hard_smt_instances")
    return res
