class Slide < ActiveRecord::Base
  belongs_to :category
  default_scope order('orden ASC')
  
end
