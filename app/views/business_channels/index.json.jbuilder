json.array!(@business_channels) do |business_channel|
  json.extract! business_channel, :id, :uid, :code, :name, :company_id, :creation_source_id, :eis_sync_date
  json.url business_channel_url(business_channel, format: :json)
end
