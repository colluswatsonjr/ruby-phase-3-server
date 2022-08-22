class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.integer :nation_id
      t.integer :role_id
    end
  end
end
