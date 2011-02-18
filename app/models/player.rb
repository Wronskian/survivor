class Player < ActiveRecord::Base
  attr_accessible :name, :description, :user_id
  
  belongs_to :user
  
  validates :name, :presence => true
  validates :description, :presence => true
end
