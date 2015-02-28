class JournalsDocumentExportBatch < ActiveRecord::Base

  has_paper_trail

    belongs_to :journals_document
  
    attr_accessible :code, :is_success, :result_message, :uid
  
  def to_s
    "JournalsDocumentExportBatch #{id}"
  end

end
