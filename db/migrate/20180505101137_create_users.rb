class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.integer :age
      t.string  :gender
      t.float   :rating
      t.string  :location
      t.string  :workplace
      t.string  :movie
      t.string  :sports
      t.string  :music
      t.string  :art
      t.string  :travelhow
      t.timestamps null: false
    end
  end
end
