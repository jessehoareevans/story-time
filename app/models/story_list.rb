class StoryList < ActiveRecord::Base
  has_many :adventures
  validates :name, :presence => true
  validates :description, :presence => true
end
