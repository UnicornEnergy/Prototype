class Window < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :materials
end
