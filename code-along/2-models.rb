# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
puts "There are #{Company.all.count} companies"

company = Company.new
# puts company.inspect
company["name"] = "Apple"
company["city"] = "Cupertino"
company["state"] = "CA"
# puts company.inspect
company.save
# Insert 
puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company
all_companies = Company.all
puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
puts cali_companies.inspect

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple"})
# 5. read a row's column value
puts apple["state"]
# 6. update a row's column value


# 7. delete a row
