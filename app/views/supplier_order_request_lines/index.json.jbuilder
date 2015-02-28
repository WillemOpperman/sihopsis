json.array!(@supplier_order_request_lines) do |supplier_order_request_line|
  json.extract! supplier_order_request_line, :id, :uid, :code, :revision_no, :supplier_order_request_id, :campaign_schedule_placement_id, :order_gross_amount, :order_commission_amount, :order_nett_amount, :commission_percent, :eis_sync_date, :order_gross_amount_home, :order_commission_amount_home, :order_nett_amount_home, :is_active, :is_changed_in_current_revision, :revision_change_details, :change_reason, :notes
  json.url supplier_order_request_line_url(supplier_order_request_line, format: :json)
end
