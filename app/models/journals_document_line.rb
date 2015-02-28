class JournalsDocumentLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :journals_document
    belongs_to :creation_source
  
    attr_accessible :amount, :code, :comments, :credit_account_no, :debit_account_no, :eis_sync_date, :name, :uid
  
  def to_s
    name
  end

end
