class AddPeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :house_id

      t.timestamps
    end
    add_index :people, :name
    add_index :people, :house_id
  end

end
