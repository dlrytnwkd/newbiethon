class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :name
      t.text :content
      t.text :route1
      t.text :route2
      t.text :route3
      t.text :route4
      t.text :route5
          t.text :route1_1
           t.text :route1_2
            t.text :route1_3
             t.text :route1_4
          
      t.text :route2
      t.text :route2_1
      t.text :route2_2
      t.text :route2_3
      t.text :route2_4
      t.text :route2_5
      
      t.text :route3
      t.text :route3_1
      t.text :route3_2
      t.text :route3_3
      t.text :route3_4
      t.text :route4
      t.text :route4_1
      t.text :route4_2
      t.text :route4_3
      t.text :route4_4
      t.text :route4_5
      t.text :route5

      t.timestamps null: false
    end
  end
end
