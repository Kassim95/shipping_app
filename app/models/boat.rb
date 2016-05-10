class Boat < ActiveRecord::Base
	belongs_to :user
	has_many :jobs
	validates :name, uniqueness: true
	validates :location, inclusion: {in: ["NYC", "LA", "Miami"]} #, "Chicago", "Boston", "New Orleans", "Detroit", "Seattle"]
end
