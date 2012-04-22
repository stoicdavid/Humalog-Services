class Slide < ActiveRecord::Base
  belongs_to :category
  default_scope order('created_at ASC')
  
end
