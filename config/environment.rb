require 'bundler'
Bundler.require

require_relative '../lib/student'

DB = { conn: SQLite3::Database.new("db/school.db") }

# RUN CODE FROM HERE

#CREATE TABLE
Student.create_table

#CREATE A NEW STUDENT
godfrey = Student.new(name: "Godfrey", age: 25)

#ADD STUDENT TO DATABASE
godfrey.add_to_db


pp Student.show_all

godfrey.name = "Onyonka"
godfrey.age = 24
godfrey.update_student 

pp Student.show_all

godfrey.delete_student 

pp Student.show_all