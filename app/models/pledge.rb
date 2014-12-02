class Pledge < ActiveRecord::Base
	belongs_to :reward
	belongs_to :user

	def project
		reward.project
	end
end
