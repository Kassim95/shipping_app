class Job < ActiveRecord::Base
	belongs_to :boat

	# belongs_to :user, through: :boat

	validates :name, uniqueness: :true
	validates :origin, inclusion: {in: ["Paris", "Tokyo", "London"]}
	validates_numericality_of :cost, :greater_than => 1000.00
	validates :cargo, length: { minimum: 50 }
	validates :destination, inclusion: {in: ["Hong Kong", "Moscow", "Berlin"]}
end
