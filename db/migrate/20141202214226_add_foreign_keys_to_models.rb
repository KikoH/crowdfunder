class AddForeignKeysToModels < ActiveRecord::Migration
  def change
  	add_column :projects, :user_id, :integer
  	add_column :rewards, :project_id, :integer
  	add_column :pledges, :user_id, :integer
  	add_column :pledges, :reward_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :comments, :project_id, :integer  
  end
end
