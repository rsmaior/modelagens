import sqlite3, os

filePath = '/Users/philipeborba/github_repos/modelagens/edgv_3.0/edgv_3_gpkg.sql'
gpkgPath = '/Users/philipeborba/github_repos/modelagens/edgv_3.0/seed_geopackage_edgv3.gpkg'
with open(filePath, 'r') as f:
    sqls = f.read()
db = sqlite3.connect(gpkgPath, isolation_level=None)
cursor = db.cursor()
cursor.executescript(sqls)
# cursor.executescript(testeCreateSQL)
cursor.close()
db.close()