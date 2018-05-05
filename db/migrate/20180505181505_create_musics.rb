class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :kpop
      t.string :hiphop
      t.string :jazz
      t.string :classic
      t.string :ballade

      t.timestamps null: false
    end
  end
end
