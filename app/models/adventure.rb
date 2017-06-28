class Adventure < ActiveRecord::Base
  belongs_to :story_list
  validates :name, :presence => true
  validates :description, :presence => true
  validates :image, :presence => true
end
