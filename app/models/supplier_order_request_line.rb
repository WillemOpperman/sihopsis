class SupplierOrderRequestLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :supplier_order_request
    belongs_to :campaign_schedule_placement
  
    attr_accessible :change_reason, :code, :commission_percent, :eis_sync_date, :is_active, :is_changed_in_current_revision, :notes, :order_commission_amount, :order_commission_amount_home, :order_gross_amount, :order_gross_amount_home, :order_nett_amount, :order_nett_amount_home, :revision_change_details, :revision_no, :uid
  
  def to_s
    "SupplierOrderRequestLine #{id}"
  end

end
