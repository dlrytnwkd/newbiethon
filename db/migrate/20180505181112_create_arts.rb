class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :piece
      t.string :craft
      t.string :painting
      t.string :design
      t.string :photography

      t.timestamps null: false
    end
  end
end
