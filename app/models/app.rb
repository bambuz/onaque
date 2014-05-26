class App < ActiveRecord::Base
	belongs_to :operatingsystem
	belongs_to :category
	has_many :values
	has_many :functions, through: :values
	accepts_nested_attributes_for :values
end
