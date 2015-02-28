class Attachment < ActiveRecord::Base

  has_paper_trail

    belongs_to :type
    belongs_to :item_entity_view
    belongs_to :related_item
  
    attr_accessible :code, :description, :file_path, :is_auto_attached_when_parent_is_emailed, :is_stored_in_document_share, :uid
  
  def to_s
    "Attachment #{id}"
  end

end
