class Brand < ActiveRecord::Base
  has_one :interface, :dependent => :destroy
  has_many :categories, :dependent => :destroy
  has_many :pdfs, :dependent => :destroy
  accepts_nested_attributes_for :categories, :allow_destroy => true,:reject_if => proc { |a| a['name'].blank?}
  accepts_nested_attributes_for :pdfs, :allow_destroy => true,:reject_if => proc { |a| a['name'].blank?}
  accepts_nested_attributes_for :interface, :allow_destroy => true
  validates_presence_of :name
  
end
