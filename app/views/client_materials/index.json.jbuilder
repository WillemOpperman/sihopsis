json.array!(@client_materials) do |client_material|
  json.extract! client_material, :id, :uid, :code, :client_id, :client_product_id, :media_category_id, :advert_no, :advert_name, :advert_title, :media_category_size_id, :media_category_format_id, :notes, :creation_source_id, :creative_agency_id, :is_advert_title_auto_maintained, :is_active, :expiry_date, :eis_sync_date, :is_advert_name_auto_maintained, :is_ad_vert_number_derived_from_code
  json.url client_material_url(client_material, format: :json)
end
