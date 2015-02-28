class JournalsDocumentSystemAppIntegrationExportBatch < ActiveRecord::Base
  belongs_to :journals_document
attr_accessible :code, :is_success, :result_message, :uid

  def to_s
    "JournalsDocumentSystemAppIntegrationExportBatch #{id}"
end

end
