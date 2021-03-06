class ClientContractLine < ActiveRecord::Base
  belongs_to :client_contract
  belongs_to :campaign_schedule_placement
attr_accessible :change_reason, :code, :commission_amount, :eis_sync_date, :gross_amount, :is_active, :is_changed_in_current_revision, :nett_amount, :notes, :revision_change_details, :revision_no, :uid

  def to_s
    "ClientContractLine #{id}"
end

end
