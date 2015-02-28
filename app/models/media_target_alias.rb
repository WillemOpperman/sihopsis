class MediaTargetAlias < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_target
    belongs_to :creation_source
  
    attr_accessible :code, :name, :uid
  
  def to_s
    name
  end

end
