class Category < ActiveRecord::Base

	has_many :connects
	has_many :articles, :through => :connects

	def to_s
		title
	end
end
