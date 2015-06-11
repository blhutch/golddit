class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :title
      t.string :destination

      t.timestamps null: false
    end
  end
end
