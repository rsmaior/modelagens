import sqlite3, os

filePath = '/Users/philipeborba/github_repos/edgv_2.1.3_pro/output.sql'
gpkgPath = '/Users/philipeborba/teste_geopackage3.gpkg'

with open(filePath) as sql_file:
    sqls = sql_file.read()

testeCreateSQL = """
CREATE TABLE teste5_p (
	 id INTEGER NOT NULL PRIMARY KEY autoincrement,
	 geometriaaproximada smallint NOT NULL REFERENCES dominios_geometriaaproximada,
	 matconstr smallint NOT NULL,
	 geom MULTIPOLYGON,
     CONSTRAINT teste5_p_matconstr_fk FOREIGN KEY (matconstr) 
        REFERENCES dominios_matconstr(code),
     CONSTRAINT teste5_p_matconstr_check CHECK (matconstr = 1 or matconstr = 2)
);
insert into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) values ('teste5_p', 'features','teste5_p', 'some description',NULL,NULL,NULL,NULL,4326);
insert into gpkg_geometry_columns values ('teste5_p', 'geom', 'MULTIPOLYGON', 4326, 0, 0 )
"""


db = sqlite3.connect(gpkgPath, isolation_level=None)
cursor = db.cursor()
cursor.executescript(sqls)
# cursor.executescript(testeCreateSQL)
cursor.close()
db.close()