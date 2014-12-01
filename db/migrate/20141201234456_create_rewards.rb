class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :price_tier
      t.text :description

      t.timestamps
    end
  end
end
