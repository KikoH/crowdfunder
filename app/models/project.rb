class Project < ActiveRecord::Base
	def pretty_start_date
		start_date.strftime("%b %d, %Y")
	end

	def pretty_end_date
		end_date.strftime("%b %d, %Y")
	end
end
