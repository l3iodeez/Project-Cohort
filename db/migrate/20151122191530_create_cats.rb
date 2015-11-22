class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name, null: false
      t.string :race, null: false
      t.json :catClasses, null: false

      t.timestamps null: false
    end
  end
end
