class Testimonial < ActiveRecord::Base
  validates :content, presence: true
  validates :email_address, presence: true
  validates :testimonialname, presence: true
  
  belongs_to :product
  belongs_to :user
end
