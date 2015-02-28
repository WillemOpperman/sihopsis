class ClientMaterial < ActiveRecord::Base

  has_paper_trail

    belongs_to :client
    belongs_to :client_product
    belongs_to :media_category
    belongs_to :media_category_size
    belongs_to :media_category_format
    belongs_to :creation_source
    belongs_to :creative_agency
  
    attr_accessible :advert_name, :advert_no, :advert_title, :code, :eis_sync_date, :expiry_date, :is_active, :is_ad_vert_number_derived_from_code, :is_advert_name_auto_maintained, :is_advert_title_auto_maintained, :notes, :uid
  
  def to_s
    "ClientMaterial #{id}"
  end

end
