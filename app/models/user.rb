class User < ActiveRecord::Base
	has_many :owned_projects, class_name: "Project"
	has_many :comments
	has_many :pledges

end
