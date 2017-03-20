require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("members.db")

create_table_cmd = <<-SQL 
	CREATE TABLE  members_list (
		id INTEGER PRIMARY KEY, 
		name VARCHAR (255),
		company VARCHAR (255), 
		paid BOOLEAN
	)
SQL

db.execute(create_table_cmd)