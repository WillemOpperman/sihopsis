class JournalsDocumentStatus < ActiveRecord::Base

  has_paper_trail

    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :is_active, :is_approved, :is_cancelled, :is_default, :is_exported, :name, :uid
  
  def to_s
    name
  end

end
