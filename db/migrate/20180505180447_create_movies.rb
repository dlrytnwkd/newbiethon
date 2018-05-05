class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :loco
      t.string :thriller
      t.string :sf
      t.string :comedy

      t.timestamps null: false
    end
  end
end
