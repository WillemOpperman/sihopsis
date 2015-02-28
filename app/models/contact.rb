class Contact < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :birthdate, :code, :designation, :e_mail, :eis_sync_date, :fax_number, :is_active, :mobile_number, :name, :phone_number, :phone_number2, :physical_address, :postal_address, :uid
  
  def to_s
    name
  end

end
