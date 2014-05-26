class Value < ActiveRecord::Base
	belongs_to :app
	belongs_to :function
	accepts_nested_attributes_for :function
end
