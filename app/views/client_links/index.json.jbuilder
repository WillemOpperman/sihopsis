json.array!(@client_links) do |client_link|
  json.extract! client_link, :id, :uid, :code, :name, :is_to_advertiser, :is_to_media_agency, :is_to_natural_client, :is_default
  json.url client_link_url(client_link, format: :json)
end
