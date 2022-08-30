class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :role_title
      t.string :role_rating
      t.string :role_description
    end
  end
end
