class Robot < ActiveRecord::Migration[5.2]
  def change
    create_table :robots do |t|
      t.string :name
      t.integer :powerlevel
      t.boolean :anger
    end
  end
end
