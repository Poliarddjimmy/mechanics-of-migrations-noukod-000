class CreateArtists < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    create_table :artists do |a|
      a.string :name
      a.string :genre
      a.integer :age
      a.string :hometown
    end
  end

end
