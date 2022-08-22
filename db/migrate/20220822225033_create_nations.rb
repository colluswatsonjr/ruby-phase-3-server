class CreateNations < ActiveRecord::Migration[6.1]
  def change
    create_table :nations do |t|
      t.string :nation_name
      t.string :nation_location
    end
  end
end
