class AddNewKeysToPledge < ActiveRecord::Migration
  def change
  	rename_column :pledges, :user_id, :backer_id
  	add_column :pledges, :project_id, :integer
  end
end
