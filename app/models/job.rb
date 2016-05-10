class Job < ActiveRecord::Base
	belongs_to :boat
	belongs_to :user, through: :boat
end
