class CreateCircleMemberships < ActiveRecord::Migration
  def change
    create_table :circle_memberships do |t|
      t.integer :user_id, :null => false
      t.integer :circle_id, :null => false

      t.timestamps
    end
  end
end
