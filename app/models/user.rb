class User < ApplicationRecord
	validate :same_password?
	validates :email, uniqueness: true, presence: true

	def same_password?
		errors.add(:password, :password_confirmation, message: "Both the password field must be same!") unless self.password == self.password_confirmation
	end
end
