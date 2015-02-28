class Currency < ActiveRecord::Base

  has_paper_trail

    belongs_to :default_tax_type
  
    attr_accessible :code, :name, :symbol, :uid
  
  def to_s
    name
  end

end
