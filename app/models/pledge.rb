class Pledge < ActiveRecord::Base
	def project
		reward.project
	end
end
