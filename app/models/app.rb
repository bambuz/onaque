class App < ActiveRecord::Base
	belongs_to :os
	belongs_to :category
	has_and_belongs_to_many :functions
end
