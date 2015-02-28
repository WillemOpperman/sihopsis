class AttachmentType < ActiveRecord::Base
attr_accessible :code, :is_auto_attached_when_parent_is_emailed, :is_default, :is_system_generated, :is_template, :is_user_attached, :name, :uid

  def to_s
    name
end

end
