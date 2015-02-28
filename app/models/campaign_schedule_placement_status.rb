class CampaignSchedulePlacementStatus < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
    belongs_to :company_division
  
    attr_accessible :code, :eis_sync_date, :is_active, :is_attachment_required_to_change_to, :is_default, :is_placement_active, :is_placement_awaiting_client_material, :is_placement_billable, :is_placement_client_approved, :is_placement_client_ordered, :is_placement_disputed, :is_placement_finished, :is_placement_instructed, :is_placement_live, :is_placement_ordered, :is_placement_part_of_credit_exposure, :is_placement_part_of_p_o_exposure, :is_placement_paused, :is_placement_proposed, :is_placement_rejected, :is_placement_requested, :is_placement_rescheduled, :is_placement_restarted, :is_placement_reviewed, :is_placement_stopped, :is_placement_suspended, :is_placement_taken_to_super_profit, :is_placement_temporary, :is_reason_required_to_change_to, :name, :uid
  
  def to_s
    name
  end

end
