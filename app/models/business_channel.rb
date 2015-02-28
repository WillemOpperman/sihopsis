class BusinessChannel < ActiveRecord::Base
  belongs_to :company
  belongs_to :creation_source
attr_accessible :code, :eis_sync_date, :name, :uid

  def to_s
    name
end

end
