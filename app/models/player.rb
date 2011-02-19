class Player < ActiveRecord::Base
  attr_accessible :name, :description, :occupation, :age, :user_id
  
  belongs_to :user	
end
