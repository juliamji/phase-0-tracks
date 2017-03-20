require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("members.db")

create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS members_list (
		id INTEGER PRIMARY KEY, 
		name VARCHAR (255),
		company VARCHAR (255), 
		paid VARCHAR
	)
SQL

db.execute(create_table_cmd)

members_list = db.execute ("SELECT * FROM members_list")
# puts members_list.class
# p members_list

def add_member(db, name, company, paid)
	db.execute("INSERT INTO members_list (name, company, paid) VALUES (?, ?, ?)", [name, company, paid])
end 	

10.times do
	add_member(db, Faker::Name.name, Faker::Company.name, "YES")
end 	


# members_list.each do |member|
# 	puts "#{member['name']} works for #{member['company']}"
# 	puts "status: #{member['paid']}"
# end 	