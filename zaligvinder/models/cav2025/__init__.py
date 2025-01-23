def getTrackData (bname = None):
    import models.cav2025.hardsmtinstances
    import models.cav2025.random2000
    import models.cav2025.random500
    import models.cav2025.smtinstances
    res = []
    for k in [
    		  models.cav2025.hardsmtinstances,
    		  models.cav2025.random2000,
    		  models.cav2025.random500,
    		  models.cav2025.smtinstances,
              ]:
        res = res+k.getTrackData (bname or "cav2025")
    return res
