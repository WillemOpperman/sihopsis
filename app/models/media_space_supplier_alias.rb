class MediaSpaceSupplierAlias < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_space
    belongs_to :supplier
  
    attr_accessible :code, :name, :uid
  
  def to_s
    name
  end

end
