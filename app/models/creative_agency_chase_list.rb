class CreativeAgencyChaseList < ActiveRecord::Base

  has_paper_trail

    belongs_to :status
    belongs_to :material_contact
    belongs_to :creative_agency
    belongs_to :creative_agency_contact
    belongs_to :media_category
    belongs_to :creation_source
    belongs_to :communication_status
  
    attr_accessible :code, :eis_sync_date, :issued_date, :name, :notes, :revision_no, :uid
  
  def to_s
    name
  end

end
