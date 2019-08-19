class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :city
      t.string :photo
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
