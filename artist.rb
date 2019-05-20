class Artist < ActiveRecord::Base
  attr_accessor :name, :age, :genre, :hometown
  
  attr_reader :id
  
  def initialize(name, age, genre, hometown, id=nil)
    @id = id
    @name = name
    @grade = grade
  end
  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade TEXT
        )
    SQL
    DB[:conn].execute(sql) 
  end
end