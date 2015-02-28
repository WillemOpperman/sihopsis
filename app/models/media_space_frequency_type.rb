class MediaSpaceFrequencyType < ActiveRecord::Base
attr_accessible :code, :custom_days, :eis_sync_date, :is_annually, :is_bi_annually, :is_bi_monthly, :is_bi_weekly, :is_custom_days, :is_daily, :is_hourly, :is_minutely, :is_monthly, :is_quarterly, :is_secondly, :is_weekly, :name, :uid

  def to_s
    name
end

end
