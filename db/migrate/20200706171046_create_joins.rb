class CreateJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :joins do |t|
      t.integer :heroine_id
      t.integer :power_id

      t.timestamps
    end
  end
end
