class CreationSource < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :is_system_import, :is_user, :is_user_import, :name, :uid
  
  def to_s
    name
  end

end
