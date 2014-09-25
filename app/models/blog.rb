class Blog < ActiveRecord::Base
	validates :title, presence: true
	validates :excerpt, presence: true
	validates :content, presence: true

end
