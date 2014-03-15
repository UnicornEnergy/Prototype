class Customer < ActiveRecord::Base
  belongs_to :salutation
  
  def fullName
    fullName = firstName + " " + lastName
  end
end
