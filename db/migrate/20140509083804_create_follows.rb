class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :owner_id
      t.integer :target_id
    end
  end
end
