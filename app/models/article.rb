class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :excerpt, presence: true
	validates :content, presence: true

	belongs_to :user
	has_many :connects
	has_many :categories, :through => :connects
	has_many :comments

	def to_s
		title
	end
end
