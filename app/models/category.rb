class Category < ActiveRecord::Base
  belongs_to :brand
  has_many :slides, :dependent => :destroy
  accepts_nested_attributes_for :slides, :allow_destroy => true,:reject_if => proc { |a| a['name'].blank?}
  default_scope order('orden ASC')
  
end
