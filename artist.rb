class Artist < ActiveRecord::Base
  attr_accessor :name, :age, :genre, :hometown
  
  attr_reader :id
  
  def initialize(name, age, genre, hometown, id=nil)
    @id = id
    @name = name
    @age = age
    @genre = genre
    @hometown = hometown
  end
  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS artists (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        age INTEGER,
        genre text,
        hometown text
        )
    SQL
    DB[:conn].execute(sql) 
  end
end