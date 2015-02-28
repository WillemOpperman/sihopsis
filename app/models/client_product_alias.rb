class ClientProductAlias < ActiveRecord::Base

  has_paper_trail

    belongs_to :client_product
    belongs_to :client
  
    attr_accessible :code, :name, :uid
  
  def to_s
    name
  end

end
