import sqlite3, os

outputFolder = 'edgv_3.0'
sqlFileNameWithExtension = 'edgv3_gpkg.sql'
gpkgFileNameWithExtension = 'seed_geopackage_edgv3.gpkg'
masterFileNameWithExtension = 'masterfile300_dsgtools_v4.json'
sqlFilePath = os.path.join(os.path.dirname(__file__), '..', outputFolder, sqlFileNameWithExtension)
gpkgPath = os.path.join(os.path.dirname(__file__), '..', outputFolder, gpkgFileNameWithExtension)
masterFileName = os.path.join(os.path.dirname(__file__), '..', outputFolder, masterFileNameWithExtension)

outputPath = os.path.join(os.path.dirname(__file__), '..', outputFolder)
with open(sqlFilePath, 'r') as f:
    sqls = f.read()
db = sqlite3.connect(gpkgPath, isolation_level=None)
cursor = db.cursor()
cursor.executescript(sqls)
# cursor.executescript(testeCreateSQL)
cursor.close()
db.close()