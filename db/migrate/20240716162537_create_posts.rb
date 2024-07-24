class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :price_total, null: false
      t.string :year, null: false
      t.string :distance, null: false
      t.string :inspection, null: false
      t.string :color, null: false
      t.string :car_name, null: false
      t.string :car_model, null: false
      t.text :rec_point, null: false
      t.text :grade, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
