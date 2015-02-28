class HoldingsFileHeader < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :agency_code, :agency_name, :code, :detail_record_counter, :eis_sync_date, :generation_date, :generation_time, :gross_decimals, :gross_rate, :network_code, :network_name, :uid
  
  def to_s
    "HoldingsFileHeader #{id}"
  end

end
