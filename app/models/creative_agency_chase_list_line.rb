class CreativeAgencyChaseListLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :creative_agency_chase_list
    belongs_to :campaign_schedule_placement
    belongs_to :material_contact
    belongs_to :media_space_part_type
  
    attr_accessible :code, :eis_sync_date, :is_changed_in_current_revision, :material_delivery_address, :material_delivery_method, :material_production_date, :name, :notes, :revision_change_details, :revision_no, :routing_address_summary, :uid
  
  def to_s
    name
  end

end
