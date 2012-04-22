class Pdf < ActiveRecord::Base
  belongs_to :brand
  TYPES = %w[Estudio IPP Referencia]
  attr_accessible :pdf_type,:name,:url
  scope :studies, where(:pdf_type => "Estudio")
  scope :ipps, where(:pdf_type => "IPP")
  scope :references, where(:pdf_type => "Referencia")
  
end
