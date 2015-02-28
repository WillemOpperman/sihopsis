json.array!(@holdings_file_helpers) do |holdings_file_helper|
  json.extract! holdings_file_helper, :id, :uid, :code, :holdings_file_header_id, :holdings_file_client_code, :holdings_file_client_name, :holdings_file_product_code, :holdings_file_product_name, :holdings_file_medium_code, :holdings_file_medium_name, :holdings_file_booked_date, :holdings_file_day_flags, :holdings_file_start_time, :holdings_file_end_time, :holdings_file_req_days_flags, :holdings_file_req_start_time, :holdings_file_req_end_time, :holdings_file_duration, :holdings_file_gross_rate, :holdings_file_gross_decimal, :holdings_file_program_name, :holdings_file_req_program_name, :holdings_file_name_for_matching, :eis_sync_date, :holdings_file_temp_code, :holdings_file_booking_code, :holdings_file_top_tailbooking_code, :holdings_file_system_client_code, :holdings_file_system_client_product_code
  json.url holdings_file_helper_url(holdings_file_helper, format: :json)
end
