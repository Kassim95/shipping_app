class Boat < ActiveRecord::Base
	belongs_to :user
	has_many :jobs
	validates :name, uniqueness: true
	validates :location, inclusion: {in: ["NYC", "LA", "Miami"]} #, "Chicago", "Boston", "New Orleans", "Detroit", "Seattle"]

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
