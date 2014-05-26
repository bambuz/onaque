class Function < ActiveRecord::Base
	belongs_to :category
	has_many :values, dependent: :destroy
	has_many :apps, through: :values
end
