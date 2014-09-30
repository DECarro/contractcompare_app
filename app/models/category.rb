class Category < ActiveRecord::Base
	validates :title, presence: true

	has_many :connects
	has_many :articles, :through => :connects

	def to_s
		title
	end
end
