class User < ActiveRecord::Base
	has_many :projects

	# callbacks
	before_save { email.downcase! }

	validates :first_name, presence: true, length: { maximum: 25 }
	validates :last_name, presence: true, length: { maximum: 25 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	

	# returns a users full name
	def full_name
		"#{first_name} #{last_name}"
	end

end
