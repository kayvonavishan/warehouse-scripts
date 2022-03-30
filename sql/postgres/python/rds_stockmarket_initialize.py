import sys
import re

#read in host id and parse 
with open("C:/terraform_state/aws-database-terraform/postgres_db_host_id.txt") as f:
    db_host_id = f.readlines()

if len(db_host_id) == 1:
    sys.exit("db_host is invalid! check inputfile")

db_host_id_parse = db_host_id[0].replace('"','')
db_host_id_parse = re.sub(r'host_id = ', '', db_host_id_parse)

