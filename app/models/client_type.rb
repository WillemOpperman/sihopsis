class ClientType < ActiveRecord::Base
attr_accessible :code, :eis_sync_date, :is_client, :is_financial, :is_media_agency, :is_natural_client, :name, :uid

  def to_s
    name
end

end
