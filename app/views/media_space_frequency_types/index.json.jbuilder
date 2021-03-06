json.array!(@media_space_frequency_types) do |media_space_frequency_type|
  json.extract! media_space_frequency_type, :id, :uid, :code, :name, :is_secondly, :is_minutely, :is_hourly, :is_daily, :is_weekly, :is_bi_weekly, :is_monthly, :is_bi_monthly, :is_quarterly, :is_annually, :is_bi_annually, :is_custom_days, :custom_days, :eis_sync_date
  json.url media_space_frequency_type_url(media_space_frequency_type, format: :json)
end
