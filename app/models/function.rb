class Function < ActiveRecord::Base
	has_many :values
	has_many :apps, through: :values
end
