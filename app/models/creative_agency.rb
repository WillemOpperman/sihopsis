class CreativeAgency < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :default_contact
  
    attr_accessible :code, :e_mail, :fax_number, :is_active, :legal_name, :name, :notes, :phone_number, :physical_address, :postal_address, :uid
  
  def to_s
    name
  end

end
