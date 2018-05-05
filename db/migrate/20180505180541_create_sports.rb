class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :running
      t.string :baseBall
      t.string :soccer
      t.string :skate
      t.string :swimming

      t.timestamps null: false
    end
  end
end
