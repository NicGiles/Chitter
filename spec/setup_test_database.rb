require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'Chitter Test')
  connection.exec('TRUNCATE cheets;')
end
