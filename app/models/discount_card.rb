class DiscountCard < ActiveRecord::Base

  has_paper_trail

    belongs_to :specific_company_division
    belongs_to :supplier_group
    belongs_to :supplier
    belongs_to :supplier_product
    belongs_to :client_group
    belongs_to :client
    belongs_to :client_product
    belongs_to :media_space
    belongs_to :media_space_part
    belongs_to :media_space_section
    belongs_to :media_category_size
    belongs_to :media_category_format
    belongs_to :supplier_contact
  
    attr_accessible :description, :discount_early_booking, :discount_negotiated, :discount_other1, :discount_other2, :discount_standard, :expiry_date, :is_active, :is_calculated, :is_gross, :start_date, :uid
  
  def to_s
    "DiscountCard #{id}"
  end

end
