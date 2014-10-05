class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	validates :email, confirmation: true
	validates :email_confirmation, presence: true

	has_many :posts
	has_many :comments
	has_many :testimonials
end
