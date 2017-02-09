class AddHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address

      t.timestamps
    end

    add_index :houses, :address
  end
end
