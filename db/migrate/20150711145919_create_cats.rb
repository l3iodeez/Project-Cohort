class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.references :user
      t.string :name
      t.string :race
      t.json :ch_class

      t.timestamps null: false
    end
  end
end
