json.array!(@holdings_file_headers) do |holdings_file_header|
  json.extract! holdings_file_header, :id, :uid, :code, :generation_date, :generation_time, :network_name, :agency_name, :detail_record_counter, :gross_rate, :gross_decimals, :eis_sync_date, :network_code, :agency_code
  json.url holdings_file_header_url(holdings_file_header, format: :json)
end
