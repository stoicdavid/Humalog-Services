json.brand @brand, :id, :name, :url
json.interface_configuration @brand.interface, :updated_device, :has_opening, :has_closing, :has_studies, :has_ipp, :has_special, :has_references, :number_of_menus, :uses_stack_view
json.interface_urls @brand.interface, :btn_url, :over_btn_url, :nav_btn_url, :backgrounds_url
json.update_interface edit_interface_url(@brand.interface)
json.interface_id @brand.interface, :id
json.number_of_categories @brand.categories.count
json.categories @brand.categories do |json, category|
  json.(category, :id, :name,:orden)
  json.number_of_slides category.slides.count
  json.category category.slides do |json,slide|
    json.(slide, :id, :name, :url,:version,:orden)
  end
end
json.number_of_studies @brand.pdfs.studies.count
json.number_of_ipps @brand.pdfs.ipps.count
json.number_of_references @brand.pdfs.references.count
json.pdfs @brand.pdfs