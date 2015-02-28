class MediaCategoriesAlias < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
    belongs_to :creation_source
  
    attr_accessible :code, :name, :uid
  
  def to_s
    name
  end

end
