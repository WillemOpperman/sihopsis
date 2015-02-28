class Supplier < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :company_division
    belongs_to :default_contact
    belongs_to :creation_source
    belongs_to :type
    belongs_to :default_tax_type
    belongs_to :default_currency
  
    attr_accessible :code, :code_external, :commission_percentage_default, :company_registration_no, :e_mail, :eis_sync_date, :fax_number, :financial_year_end, :is_active, :name, :offical_name, :payment_terms, :phone_number, :physical_address, :postal_address, :tax_registration_no, :uid
  
  def to_s
    name
  end

end
