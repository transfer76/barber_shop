require 'sqlite3'

#db = SQLite3::Database.new 'barbershop.db'

#db.execute 'select * from Users' do |row|
#  print row[1]
#  print "\t - \t"
#  puts row[3]
#  puts '============='
#end

db = SQLite3::Database.new 'barbershop.db'
db.results_as_hash = true
db.execute 'select * from Users' do |row|
  print row['username']
  print "\t - \t"
  puts row['datestamp']
  puts '============='
end