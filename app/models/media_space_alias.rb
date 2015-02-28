class MediaSpaceAlias < ActiveRecord::Base
  belongs_to :media_space
  belongs_to :media_region
  belongs_to :creation_source
attr_accessible :code, :name, :uid

  def to_s
    name
end

end
