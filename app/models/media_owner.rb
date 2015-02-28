class MediaOwner < ActiveRecord::Base

  has_paper_trail

    belongs_to :default_contact
    belongs_to :creation_source
    belongs_to :default_material_deadline_days
    belongs_to :default_cancellation_days
    belongs_to :company_division
  
    attr_accessible :code, :code_external, :default_commission_percentage, :e_mail, :eis_sync_date, :fax_number, :is_active, :name, :offical_name, :phone_number, :physical_address, :postal_address, :uid
  
  def to_s
    name
  end

end
