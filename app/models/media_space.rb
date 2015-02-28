class MediaSpace < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_owner
    belongs_to :media_category
    belongs_to :frequency_type
    belongs_to :default_material_deadline_days
    belongs_to :default_cancellation_days
    belongs_to :business_unit
    belongs_to :creation_source
    belongs_to :m_b_r_integration_export_prover
    belongs_to :m_i_integration_export_prover
  
    attr_accessible :code, :eis_sync_date, :is_active, :is_arbitrage, :name, :uid
  
  def to_s
    name
  end

end
