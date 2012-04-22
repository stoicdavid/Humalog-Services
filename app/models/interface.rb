class Interface < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :backgrounds_url, :brand_id, :btn_url, :has_closing, :has_ipp, :has_opening, :has_references, :has_special, :has_studies, :nav_btn_url, :number_of_menus, :over_btn_url, :updated_device, :uses_stack_view
  
end
