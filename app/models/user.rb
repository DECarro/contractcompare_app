class User < ActiveRecord::Base
	
	validates :email, confirmation: true
	validates :email_confirmation, presence: true

	has_many :posts
	has_many :comments
	has_many :testimonials
end
