class Function < ActiveRecord::Base
	belongs_to :category
	has_many :values
	has_many :apps, through: :values
end
