class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :pledges
  has_many :owned_projects, class_name: "Project"

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

  
  
  #ROLES = %i[backer owner admin]

	#def roles=(roles)
	#  roles = [*roles].map { |r| r.to_sym }
	#  self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
	#end
#
	#def roles
	#  ROLES.reject do |r|
	#    ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
	#  end
	#end
#
	#def has_role?(role)
  #	roles.include?(role)
	#end
#
	#private
	#def user_params
	#	params.require(:user).permit(:roles)
	#end
end
