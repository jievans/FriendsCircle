class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :body
      t.integer :post_id

      t.timestamps
    end
  end
end
