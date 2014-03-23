class Value < ActiveRecord::Base
	belongs_to :app
	belongs_to :function
end
